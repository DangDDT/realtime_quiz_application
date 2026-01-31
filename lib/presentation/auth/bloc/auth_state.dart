part of 'auth_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class AuthState with _$AuthState {
  const factory AuthState.authenticated({required AuthUser user}) =
      AuthenticatedAuthState;
  const factory AuthState.unauthenticated() = UnauthenticatedAuthState;
}
