import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/utils/helpers/app_repository_error_helper.dart';
import 'package:realtime_quiz_app/domain/entities/session.dart';
import 'package:realtime_quiz_app/domain/enums/session_state_enum.dart';
import 'package:realtime_quiz_app/domain/models/api_client_error_rethrow_x.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/session_repository.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';
import 'package:realtime_quiz_app/infrastructure/clients/supabase_client.dart';
import 'package:rxdart/rxdart.dart';

class SessionRepositoryImpl implements SessionRepository {
  final AppSupabaseClient _supabaseClient;
  final LoggerService _logger;
  SessionRepositoryImpl({
    required AppSupabaseClient supabaseClient,
    LoggerService? logger,
  }) : _supabaseClient = supabaseClient,

       _logger = logger ?? sl.get<LoggerService>(param1: SessionRepositoryImpl);

  @override
  Future<AppResult<(String, SessionStateEnum)?>>
  getSessionIdAndStatusByPinCode({required String pinCode}) {
    return safeRepoFutureCall(() async {
      final response = await _supabaseClient
          .from('sessions')
          .select('id, status')
          .eq('pin_code', pinCode)
          .maybeSingle()
          .rethrowsOnApiClientException(_logger);
      if (response == null) {
        return AppResult.success(null);
      }
      return AppResult.success((
        response['id'],
        SessionStateEnum.fromCode(response['status']),
      ));
    }, logger: _logger);
  }

  @override
  Future<AppResult<Session?>> getSessionBySessionId({
    required String sessionId,
  }) {
    return safeRepoFutureCall(() async {
      final response = await _supabaseClient
          .from('sessions')
          .select('''
            id,
            pin_code,
            host:users!sessions_host_id_fkey (
              id,
            ),
            quiz:quizzes!sessions_quiz_id_fkey (
              id,
              title,
              description,
              created_at,
              created_by,
            ),
            status,
            created_at,
            expired_at,
            session_active_time
          ''')
          .eq('id', sessionId)
          .maybeSingle()
          .rethrowsOnApiClientException(_logger);
      return AppResult.success(
        response != null ? Session.fromJson(response) : null,
      );
    }, logger: _logger);
  }

  @override
  Stream<AppResult<Session>> watchSessionBySessionId({
    required String sessionId,
  }) {
    return safeRepoStreamCall(() {
      return _supabaseClient
          .from('sessions')
          .stream(primaryKey: ['id'])
          .eq('id', sessionId)
          .limit(1)
          .map((event) => event.first)
          .switchMap((sessionData) {
            return _supabaseClient
                .from('sessions_with_host')
                .select('*')
                .eq('id', sessionData['id'])
                .single()
                .asStream()
                .switchMap((hostData) {
                  return _supabaseClient
                      .from('quizzes')
                      .select('''
                        id,
                        title,
                        description,
                        created_at,
                        created_by
                      ''')
                      .eq('id', sessionData['quiz_id'])
                      .single()
                      .asStream()
                      .map((quizData) {
                        final combined = {
                          ...sessionData,
                          'quiz': quizData,
                          'host': {'id': hostData['host_id']},
                        };
                        return AppResult.success(Session.fromJson(combined));
                      });
                });
          });
    }, logger: _logger);
  }
}
