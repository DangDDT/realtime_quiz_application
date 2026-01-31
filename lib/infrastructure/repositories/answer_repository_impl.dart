import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/utils/helpers/app_repository_error_helper.dart';
import 'package:realtime_quiz_app/domain/entities/answer.dart';
import 'package:realtime_quiz_app/domain/models/api_client_error_rethrow_x.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/answer_repository.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';
import 'package:realtime_quiz_app/infrastructure/clients/supabase_client.dart';

class AnswerRepositoryImpl implements AnswerRepository {
  final AppSupabaseClient _supabaseClient;
  final LoggerService _logger;

  AnswerRepositoryImpl({
    required AppSupabaseClient supabaseClient,
    LoggerService? logger,
  }) : _supabaseClient = supabaseClient,
       _logger = logger ?? sl.get<LoggerService>(param1: AnswerRepositoryImpl);

  @override
  Future<AppResult<void>> submitAnswer({
    required String sessionId,
    required String questionId,
    required int selectedOptionIndex,
  }) {
    return safeRepoFutureCall(() async {
      await _supabaseClient
          .rpc(
            'submit_answer',
            params: {
              'p_session_id': sessionId,
              'p_question_id': questionId,
              'p_selected_option_index': selectedOptionIndex,
            },
          )
          .rethrowsOnApiClientException(_logger);

      return AppResult.success(null);
    }, logger: _logger);
  }

  @override
  Stream<AppResult<List<Answer>>> watchAnswersBySessionIdAndUserId({
    required String sessionId,
    required String userId,
  }) {
    return safeRepoStreamCall(() {
      return _supabaseClient
          .from('answers')
          .stream(primaryKey: ['id'])
          .eq('session_id', sessionId)
          .order('submitted_at', ascending: true)
          .map((events) {
            final userAnswersData = events.where((e) {
              return e['user_id'] == userId;
            }).toList();

            final answers = userAnswersData
                .map((e) => Answer.fromJson(e))
                .toList();

            answers.sort((a, b) => a.submittedAt.compareTo(b.submittedAt));

            return AppResult.success(answers);
          });
    }, logger: _logger);
  }

  @override
  Future<AppResult<List<Answer>>> getAnswersBySessionIdAndUserId({
    required String sessionId,
    required String userId,
  }) {
    return safeRepoFutureCall(() async {
      final response = await _supabaseClient
          .from('answers')
          .select('''
            id,
            session_id,
            user_id,
            question_id,
            selected_option_index,
            is_correct,
            submitted_at
          ''')
          .eq('session_id', sessionId)
          .eq('user_id', userId)
          .order('submitted_at', ascending: true)
          .rethrowsOnApiClientException(_logger);

      final answers = (response as List)
          .map((json) => Answer.fromJson(json as Map<String, dynamic>))
          .toList();

      return AppResult.success(answers);
    }, logger: _logger);
  }
}
