import 'package:realtime_quiz_app/domain/entities/answer.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/answer_repository.dart';

class WatchAnswersBySessionAndUserUseCase {
  final AnswerRepository _answerRepository;

  WatchAnswersBySessionAndUserUseCase({
    required AnswerRepository answerRepository,
  }) : _answerRepository = answerRepository;

  Stream<AppResult<List<Answer>>> call({
    required String sessionId,
    required String userId,
  }) {
    return _answerRepository.watchAnswersBySessionIdAndUserId(
      sessionId: sessionId,
      userId: userId,
    );
  }
}
