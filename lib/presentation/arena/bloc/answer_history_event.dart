part of 'answer_history_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class AnswerHistoryEvent with _$AnswerHistoryEvent {
  const factory AnswerHistoryEvent.watchAnswers({
    required String sessionId,
    required String userId,
  }) = WatchAnswersEvent;

  const factory AnswerHistoryEvent.loadAnswers({
    required String sessionId,
    required String userId,
  }) = LoadAnswersEvent;
}
