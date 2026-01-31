import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/utils/helpers/app_repository_error_helper.dart';
import 'package:realtime_quiz_app/domain/entities/question.dart';
import 'package:realtime_quiz_app/domain/models/api_client_error_rethrow_x.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/question_repository.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';
import 'package:realtime_quiz_app/infrastructure/clients/supabase_client.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final AppSupabaseClient _supabaseClient;
  final LoggerService _logger;

  QuestionRepositoryImpl({
    required AppSupabaseClient supabaseClient,
    LoggerService? logger,
  }) : _supabaseClient = supabaseClient,
       _logger =
           logger ?? sl.get<LoggerService>(param1: QuestionRepositoryImpl);

  @override
  Future<AppResult<List<Question>>> getQuestionsByQuizId({
    required String quizId,
  }) {
    return safeRepoFutureCall(() async {
      final response = await _supabaseClient
          .from('questions')
          .select('''
            id,
            quiz_id,
            content,
            options,
            correct_option_index,
            points
          ''')
          .eq('quiz_id', quizId)
          .rethrowsOnApiClientException(_logger);

      final questions = (response as List)
          .map((json) => Question.fromJson(json as Map<String, dynamic>))
          .toList();

      return AppResult.success(questions);
    }, logger: _logger);
  }

  @override
  Future<AppResult<Question?>> getQuestionById({required String questionId}) {
    return safeRepoFutureCall(() async {
      final response = await _supabaseClient
          .from('questions')
          .select('''
            id,
            quiz_id,
            content,
            options,
            correct_option_index,
            points
          ''')
          .eq('id', questionId)
          .maybeSingle()
          .rethrowsOnApiClientException(_logger);

      return AppResult.success(
        response != null ? Question.fromJson(response) : null,
      );
    }, logger: _logger);
  }
}
