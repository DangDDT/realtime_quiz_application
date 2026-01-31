import 'package:realtime_quiz_app/domain/entities/answer.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';

interface class AnswerRepository {
  Future<AppResult<void>> submitAnswer({
    required String sessionId,
    required String questionId,
    required int selectedOptionIndex,
  }) =>
      throw UnimplementedError();

  Stream<AppResult<List<Answer>>> watchAnswersBySessionIdAndUserId({
    required String sessionId,
    required String userId,
  }) =>
      throw UnimplementedError();

  Future<AppResult<List<Answer>>> getAnswersBySessionIdAndUserId({
    required String sessionId,
    required String userId,
  }) =>
      throw UnimplementedError();
}
