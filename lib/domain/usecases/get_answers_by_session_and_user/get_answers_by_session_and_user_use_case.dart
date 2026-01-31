import 'package:realtime_quiz_app/domain/entities/answer.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/answer_repository.dart';

class GetAnswersBySessionAndUserUseCase {
  final AnswerRepository _answerRepository;

  GetAnswersBySessionAndUserUseCase({
    required AnswerRepository answerRepository,
  }) : _answerRepository = answerRepository;

  Future<AppResult<List<Answer>>> call({
    required String sessionId,
    required String userId,
  }) async {
    return _answerRepository.getAnswersBySessionIdAndUserId(
      sessionId: sessionId,
      userId: userId,
    );
  }
}
