part of 'auth_bloc.dart';

@Freezed(toJson: false, fromJson: false)
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = _LoginAuthEvent;
  const factory AuthEvent.logout() = _LogoutAuthEvent;
}
