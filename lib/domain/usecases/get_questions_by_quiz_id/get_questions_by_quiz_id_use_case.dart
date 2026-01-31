import 'package:realtime_quiz_app/domain/entities/question.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/question_repository.dart';

class GetQuestionsByQuizIdUseCase {
  final QuestionRepository _questionRepository;

  GetQuestionsByQuizIdUseCase({
    required QuestionRepository questionRepository,
  }) : _questionRepository = questionRepository;

  Future<AppResult<List<Question>>> call(String quizId) async {
    return _questionRepository.getQuestionsByQuizId(quizId: quizId);
  }
}
