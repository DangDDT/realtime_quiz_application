part of 'session_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class SessionEvent with _$SessionEvent {
  const factory SessionEvent.watchSession({required String sessionId}) =
      WatchSessionStatusEvent;
  const factory SessionEvent.leaveSession({
    required String sessionId,
    required String userId,
  }) = LeaveSessionEvent;
}
