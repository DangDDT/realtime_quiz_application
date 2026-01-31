part of 'answer_cubit.dart';

@Freezed(toJson: false, fromJson: false)
sealed class AnswerState with _$AnswerState {
  const factory AnswerState.initial() = AnswerInitialState;

  const factory AnswerState.selected({
    required int selectedOptionIndex,
    required String questionId,
  }) = AnswerSelectedState;

  const factory AnswerState.submitting() = AnswerSubmittingState;

  const factory AnswerState.submitted({
    required int selectedOptionIndex,
    required int correctOptionIndex,
    required bool isCorrect,
    required int pointsEarned,
    required String questionId,
  }) = AnswerSubmittedState;

  const factory AnswerState.error({
    required String message,
  }) = AnswerErrorState;
}
