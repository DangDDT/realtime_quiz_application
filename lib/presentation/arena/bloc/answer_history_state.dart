part of 'answer_history_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class AnswerHistoryState with _$AnswerHistoryState {
  const factory AnswerHistoryState.initial() = AnswerHistoryInitialState;

  const factory AnswerHistoryState.loading() = AnswerHistoryLoadingState;

  const factory AnswerHistoryState.loaded({
    required List<Answer> answers,
    required Set<String> answeredQuestionIds,
  }) = AnswerHistoryLoadedState;

  const factory AnswerHistoryState.error({
    required AppError error,
  }) = AnswerHistoryErrorState;
}
