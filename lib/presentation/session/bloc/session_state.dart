part of 'session_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class SessionState with _$SessionState {
  const factory SessionState.loading() = SessionLoadingState;
  const factory SessionState.waiting({required Session session}) =
      SessionWaitingState;
  const factory SessionState.active({required Session session}) =
      SessionActiveState;
  const factory SessionState.canceled({required Session session}) =
      SessionCanceledState;
  const factory SessionState.finished({required Session session}) =
      SessionFinishedState;
  const factory SessionState.error({
    required AppError error,
    required String sessionId,
  }) = SessionErrorState;
  const factory SessionState.leftSession({required String sessionId}) =
      SessionLeftState;
}
