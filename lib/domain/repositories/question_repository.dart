import 'package:realtime_quiz_app/domain/entities/question.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';

interface class QuestionRepository {
  Future<AppResult<List<Question>>> getQuestionsByQuizId({
    required String quizId,
  }) =>
      throw UnimplementedError();

  Future<AppResult<Question?>> getQuestionById({
    required String questionId,
  }) =>
      throw UnimplementedError();
}
