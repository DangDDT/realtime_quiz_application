import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/entities/session.dart';
import 'package:realtime_quiz_app/domain/enums/session_state_enum.dart';
import 'package:realtime_quiz_app/domain/models/app_error.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/usecases/leave_session/leave_session_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/watch_session_by_session_id/watch_session_status_by_pin_code_use_case.dart';

part 'session_bloc.freezed.dart';
part 'session_event.dart';
part 'session_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc({
    required WatchSessionBySessionIdUseCase watchSessionBySessionIdUseCase,
    required LeaveSessionUseCase leaveSessionUseCase,
  }) : _watchSessionBySessionIdUseCase = watchSessionBySessionIdUseCase,
       _leaveSessionUseCase = leaveSessionUseCase,
       super(SessionLoadingState()) {
    on<WatchSessionStatusEvent>(
      _onWatchSessionStatus,
      transformer: droppable(),
    );
    on<LeaveSessionEvent>(_onLeaveSession, transformer: droppable());
  }

  final WatchSessionBySessionIdUseCase _watchSessionBySessionIdUseCase;
  final LeaveSessionUseCase _leaveSessionUseCase;

  Future<void> _onWatchSessionStatus(
    WatchSessionStatusEvent event,
    Emitter<SessionState> emit,
  ) async {
    await emit.forEach(
      _watchSessionBySessionIdUseCase.call(event.sessionId),
      onData: (result) {
        return result.when(
          success: (session) => switch (session.status) {
            SessionStateEnum.waiting => SessionWaitingState(session: session),
            SessionStateEnum.active => SessionActiveState(session: session),
            SessionStateEnum.canceled => SessionCanceledState(session: session),
            SessionStateEnum.finished => SessionFinishedState(session: session),
          },
          failure: (AppError error) =>
              SessionErrorState(error: error, sessionId: event.sessionId),
        );
      },
      onError: (error, stackTrace) {
        return SessionErrorState(
          error: AppError.uncaught(message: error.toString()),
          sessionId: event.sessionId,
        );
      },
    );
  }

  Future<void> _onLeaveSession(
    LeaveSessionEvent event,
    Emitter<SessionState> emit,
  ) async {
    emit(SessionLeftState(sessionId: event.sessionId));
    final result = await _leaveSessionUseCase.call(
      sessionId: event.sessionId,
      userId: event.userId,
    );
    result.when(
      success: (_) => emit(SessionLeftState(sessionId: event.sessionId)),
      failure: (error) =>
          emit(SessionErrorState(error: error, sessionId: event.sessionId)),
    );
  }
}
