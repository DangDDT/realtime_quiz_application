import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/entities/auth_user.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/usecases/login/login_use_case.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required LoginUseCase loginUseCase, required AuthUser? initialUser})
    : _loginUseCase = loginUseCase,
      super(
        initialUser != null
            ? AuthState.authenticated(user: initialUser)
            : const AuthState.unauthenticated(),
      ) {
    on<_LoginAuthEvent>(_onLogin, transformer: droppable());
    on<_LogoutAuthEvent>(_onLogout, transformer: droppable());
  }

  final LoginUseCase _loginUseCase;

  Future<void> _onLogin(AuthEvent event, Emitter<AuthState> emit) async {
    final result = await _loginUseCase.call();
    result.when(
      success: (user) {
        emit(AuthState.authenticated(user: user));
      },
      failure: (error) {
        emit(AuthState.unauthenticated());
      },
    );
  }

  void _onLogout(AuthEvent event, Emitter<AuthState> emit) {
    emit(const AuthState.unauthenticated());
  }
}
