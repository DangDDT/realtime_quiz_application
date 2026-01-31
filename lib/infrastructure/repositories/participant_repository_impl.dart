import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/utils/helpers/app_repository_error_helper.dart';
import 'package:realtime_quiz_app/domain/entities/participant.dart';
import 'package:realtime_quiz_app/domain/models/api_client_error_rethrow_x.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/participant_repository.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';
import 'package:realtime_quiz_app/infrastructure/clients/supabase_client.dart';

class ParticipantRepositoryImpl implements ParticipantRepository {
  final AppSupabaseClient _supabaseClient;
  final LoggerService _logger;
  ParticipantRepositoryImpl({
    required AppSupabaseClient supabaseClient,
    LoggerService? logger,
  }) : _supabaseClient = supabaseClient,
       _logger =
           logger ?? sl.get<LoggerService>(param1: ParticipantRepositoryImpl);

  @override
  Future<AppResult<bool>> checkParticipantIsExistedInSession({
    required String sessionId,
    required String userId,
  }) {
    return safeRepoFutureCall(() async {
      final participant = await _supabaseClient
          .from('participants')
          .select('*')
          .eq('session_id', sessionId)
          .eq('user_id', userId)
          .maybeSingle()
          .rethrowsOnApiClientException(_logger);
      if (participant == null) {
        return AppResult.success(false);
      }
      return AppResult.success(true);
    }, logger: _logger);
  }

  @override
  Future<AppResult<void>> createParticipant({
    required String sessionId,
    required String userId,
    required String nickName,
  }) {
    return safeRepoFutureCall(() async {
      final participant = await _supabaseClient
          .from('participants')
          .select('*')
          .eq('session_id', sessionId)
          .eq('user_id', userId)
          .maybeSingle()
          .rethrowsOnApiClientException(_logger);
      if (participant != null) {
        if (nickName != participant['nickname']) {
          await _supabaseClient
              .from('participants')
              .update({'nickname': nickName})
              .eq('session_id', sessionId)
              .eq('user_id', userId)
              .rethrowsOnApiClientException(_logger);
        }
        return AppResult.success(null);
      }
      await _supabaseClient
          .from('participants')
          .insert({
            'session_id': sessionId,
            'user_id': userId,
            'nickname': nickName,
          })
          .rethrowsOnApiClientException(_logger);
      return AppResult.success(null);
    }, logger: _logger);
  }

  @override
  Future<AppResult<void>> deleteParticipant({
    required String sessionId,
    required String userId,
  }) {
    return safeRepoFutureCall(() async {
      await _supabaseClient
          .from('participants')
          .delete()
          .eq('session_id', sessionId)
          .eq('user_id', userId)
          .rethrowsOnApiClientException(_logger);
      return AppResult.success(null);
    }, logger: _logger);
  }

  @override
  Stream<AppResult<List<Participant>>> watchParticipantsBySessionId({
    required String sessionId,
  }) {
    return safeRepoStreamCall(() {
      return _supabaseClient
          .from('participants')
          .stream(primaryKey: ['id'])
          .eq('session_id', sessionId)
          .order('score', ascending: false)
          .order('joined_at', ascending: true)
          .map((event) => event.map(Participant.fromJson).toList())
          .map((event) => AppResult.success(event));
    }, logger: _logger);
  }
}
