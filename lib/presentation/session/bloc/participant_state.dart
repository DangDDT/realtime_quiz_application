part of 'participant_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class ParticipantState with _$ParticipantState {
  const factory ParticipantState.initial() = ParticipantInitialState;
  const factory ParticipantState.loading() = ParticipantLoadingState;
  const factory ParticipantState.success(List<Participant> participants) =
      ParticipantSuccessState;
  const factory ParticipantState.error(AppError error) = ParticipantErrorState;
}
