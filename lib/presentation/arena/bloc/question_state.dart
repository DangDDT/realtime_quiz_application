part of 'question_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = QuestionInitialState;

  const factory QuestionState.loading() = QuestionLoadingState;

  const factory QuestionState.loaded({
    required List<Question> questions,
    required int currentQuestionIndex,
    required Question currentQuestion,
  }) = QuestionLoadedState;

  const factory QuestionState.error({
    required AppError error,
  }) = QuestionErrorState;

  const factory QuestionState.empty() = QuestionEmptyState;
}
