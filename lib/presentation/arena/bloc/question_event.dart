part of 'question_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.loadQuestions({
    required String quizId,
    Set<String>? answeredQuestionIds,
  }) = LoadQuestionsEvent;

  const factory QuestionEvent.nextQuestion({
    Set<String>? answeredQuestionIds,
  }) = NextQuestionEvent;

  const factory QuestionEvent.previousQuestion() = PreviousQuestionEvent;

  const factory QuestionEvent.goToQuestion({
    required int questionIndex,
  }) = GoToQuestionEvent;
}
