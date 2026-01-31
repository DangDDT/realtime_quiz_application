part of 'participant_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class ParticipantEvent with _$ParticipantEvent {
  const factory ParticipantEvent.started({required String sessionId}) =
      ParticipantStartedEvent;
}
