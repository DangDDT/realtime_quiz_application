import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/answer_repository.dart';

class SubmitAnswerUseCase {
  final AnswerRepository _answerRepository;

  SubmitAnswerUseCase({
    required AnswerRepository answerRepository,
  }) : _answerRepository = answerRepository;

  Future<AppResult<void>> call({
    required String sessionId,
    required String questionId,
    required int selectedOptionIndex,
  }) async {
    return _answerRepository.submitAnswer(
      sessionId: sessionId,
      questionId: questionId,
      selectedOptionIndex: selectedOptionIndex,
    );
  }
}
