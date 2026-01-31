import 'package:realtime_quiz_app/domain/entities/question.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/question_repository.dart';

class GetQuestionByIdUseCase {
  final QuestionRepository _questionRepository;

  GetQuestionByIdUseCase({
    required QuestionRepository questionRepository,
  }) : _questionRepository = questionRepository;

  Future<AppResult<Question?>> call(String questionId) async {
    return _questionRepository.getQuestionById(questionId: questionId);
  }
}
