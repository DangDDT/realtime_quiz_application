import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/entities/participant.dart';
import 'package:realtime_quiz_app/domain/models/app_error.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/usecases/watch_participant_by_session_id/watch_partcipant_by_session_id_use_case.dart';

part 'participant_bloc.freezed.dart';
part 'participant_event.dart';
part 'participant_state.dart';

class ParticipantBloc extends Bloc<ParticipantEvent, ParticipantState> {
  ParticipantBloc({
    required WatchParticipantsBySessionIdUseCase
    watchParticipantsBySessionIdUseCase,
  }) : _watchParticipantsBySessionIdUseCase =
           watchParticipantsBySessionIdUseCase,
       super(ParticipantInitialState()) {
    on<ParticipantStartedEvent>(_onParticipantStarted);
  }

  final WatchParticipantsBySessionIdUseCase
  _watchParticipantsBySessionIdUseCase;

  Future<void> _onParticipantStarted(
    ParticipantStartedEvent event,
    Emitter<ParticipantState> emit,
  ) async {
    emit(ParticipantLoadingState());
    await emit.forEach(
      _watchParticipantsBySessionIdUseCase.call(event.sessionId),
      onData: (result) {
        return result.when(
          success: (participants) => ParticipantSuccessState(participants),
          failure: (error) => ParticipantErrorState(error),
        );
      },
      onError: (error, stackTrace) {
        return ParticipantErrorState(
          AppError.uncaught(message: error.toString()),
        );
      },
    );
  }
}
