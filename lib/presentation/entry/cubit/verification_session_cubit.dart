import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/enums/session_state_enum.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/usecases/check_participant_is_existed_in_session/check_participant_is_existed_in_session_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/create_participant_by_session_id/create_participant_by_session_id_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/get_session_id_by_pin_code/get_session_id_by_pin_code_use_case.dart';

part 'verification_session_cubit.freezed.dart';
part 'verification_session_state.dart';

class VerificationSessionCubit extends Cubit<VerificationSessionState> {
  VerificationSessionCubit({
    required GetSessionIdAndStatusByPinCodeUseCase
    getSessionIdAndStatusByPinCodeUseCase,
    required CreateParticipantBySessionIdUseCase
    createParticipantBySessionIdUseCase,
    required CheckParticipantIsExistedInSessionUseCase
    checkParticipantIsExistedInSessionUseCase,
  }) : _getSessionIdAndStatusByPinCodeUseCase =
           getSessionIdAndStatusByPinCodeUseCase,
       _createParticipantBySessionIdUseCase =
           createParticipantBySessionIdUseCase,
       _checkParticipantIsExistedInSessionUseCase =
           checkParticipantIsExistedInSessionUseCase,
       super(const VerificationSessionInitialState());

  final GetSessionIdAndStatusByPinCodeUseCase
  _getSessionIdAndStatusByPinCodeUseCase;
  final CreateParticipantBySessionIdUseCase
  _createParticipantBySessionIdUseCase;
  final CheckParticipantIsExistedInSessionUseCase
  _checkParticipantIsExistedInSessionUseCase;

  Future<void> verifySession({
    required String pinCode,
    required String nickname,
    required String userId,
  }) async {
    emit(const VerificationSessionLoadingState());
    final result = await _getSessionIdAndStatusByPinCodeUseCase.call(pinCode);

    await result.when(
      success: (data) async => _handleSessionVerificationSuccess(
        data: data,
        nickname: nickname,
        userId: userId,
      ),
      failure: (error) async => _handleSessionVerificationFailure(),
    );
  }

  Future<void> _handleSessionVerificationSuccess({
    required (String, SessionStateEnum)? data,
    required String nickname,
    required String userId,
  }) async {
    if (data == null) {
      emit(const VerificationSessionNoSessionFoundState());
      return;
    }

    final sessionId = data.$1;
    final sessionState = data.$2;

    final isParticipantExisted = await _checkIfParticipantExists(
      sessionId: sessionId,
      userId: userId,
    );

    if (!isParticipantExisted) {
      final validationError = _validateSessionState(sessionState);
      if (validationError != null) {
        emit(VerificationSessionErrorState(message: validationError));
        return;
      }
    }

    await _createParticipantAndEmitResult(
      sessionId: sessionId,
      sessionState: sessionState,
      userId: userId,
      nickname: nickname,
    );
  }

  Future<bool> _checkIfParticipantExists({
    required String sessionId,
    required String userId,
  }) async {
    final checkParticipantResult =
        await _checkParticipantIsExistedInSessionUseCase.call(
          sessionId: sessionId,
          userId: userId,
        );

    return checkParticipantResult.when(
      success: (isExisted) => isExisted,
      failure: (error) => false,
    );
  }

  String? _validateSessionState(SessionStateEnum sessionState) {
    return switch (sessionState) {
      SessionStateEnum.active =>
        'Session is already active, please join another session',
      SessionStateEnum.canceled =>
        'Session is canceled, please join another session',
      SessionStateEnum.finished =>
        'Session is finished, please join another session',
      _ => null,
    };
  }

  Future<void> _createParticipantAndEmitResult({
    required String sessionId,
    required SessionStateEnum sessionState,
    required String userId,
    required String nickname,
  }) async {
    final result = await _createParticipantBySessionIdUseCase.call(
      sessionId: sessionId,
      userId: userId,
      nickName: nickname,
    );

    await result.when(
      success: (data) async {
        emit(
          VerificationSessionSuccessState(
            sessionId: sessionId,
            sessionState: sessionState,
          ),
        );
      },
      failure: (error) async {
        emit(
          const VerificationSessionErrorState(
            message: 'An error occurred while creating participant',
          ),
        );
        await Future.delayed(const Duration(seconds: 3));
        emit(const VerificationSessionInitialState());
      },
    );
  }

  Future<void> _handleSessionVerificationFailure() async {
    emit(
      const VerificationSessionErrorState(
        message: 'An error occurred while verifying session',
      ),
    );
    await Future.delayed(const Duration(seconds: 3));
    emit(const VerificationSessionInitialState());
  }
}
