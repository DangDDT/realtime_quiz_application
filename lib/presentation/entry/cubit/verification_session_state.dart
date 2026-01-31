part of 'verification_session_cubit.dart';

@Freezed(toJson: false, fromJson: false)
sealed class VerificationSessionState with _$VerificationSessionState {
  const factory VerificationSessionState.initial() =
      VerificationSessionInitialState;
  const factory VerificationSessionState.loading() =
      VerificationSessionLoadingState;
  const factory VerificationSessionState.success({
    required String sessionId,
    required SessionStateEnum sessionState,
  }) = VerificationSessionSuccessState;
  const factory VerificationSessionState.noSessionFound() =
      VerificationSessionNoSessionFoundState;
  const factory VerificationSessionState.error({required String message}) =
      VerificationSessionErrorState;
}
