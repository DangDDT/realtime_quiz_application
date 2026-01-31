import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/entities/answer.dart';
import 'package:realtime_quiz_app/domain/models/app_error.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/usecases/get_answers_by_session_and_user/get_answers_by_session_and_user_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/watch_answers_by_session_and_user/watch_answers_by_session_and_user_use_case.dart';

part 'answer_history_bloc.freezed.dart';
part 'answer_history_event.dart';
part 'answer_history_state.dart';

class AnswerHistoryBloc extends Bloc<AnswerHistoryEvent, AnswerHistoryState> {
  AnswerHistoryBloc({
    required WatchAnswersBySessionAndUserUseCase
    watchAnswersBySessionAndUserUseCase,
    required GetAnswersBySessionAndUserUseCase
    getAnswersBySessionAndUserUseCase,
  }) : _watchAnswersBySessionAndUserUseCase =
           watchAnswersBySessionAndUserUseCase,
       _getAnswersBySessionAndUserUseCase = getAnswersBySessionAndUserUseCase,
       super(const AnswerHistoryState.initial()) {
    on<WatchAnswersEvent>(_onWatchAnswers, transformer: droppable());
    on<LoadAnswersEvent>(_onLoadAnswers, transformer: droppable());
  }

  final WatchAnswersBySessionAndUserUseCase
  _watchAnswersBySessionAndUserUseCase;
  final GetAnswersBySessionAndUserUseCase _getAnswersBySessionAndUserUseCase;

  Future<void> _onWatchAnswers(
    WatchAnswersEvent event,
    Emitter<AnswerHistoryState> emit,
  ) async {
    emit(const AnswerHistoryState.loading());

    await emit.forEach(
      _watchAnswersBySessionAndUserUseCase.call(
        sessionId: event.sessionId,
        userId: event.userId,
      ),
      onData: (result) {
        switch (result) {
          case SuccessResult(:final data):
            final answeredQuestionIds = data
                .map((answer) => answer.questionId)
                .toSet();
            return AnswerHistoryState.loaded(
              answers: data,
              answeredQuestionIds: answeredQuestionIds,
            );
          case FailureResult(:final error):
            return AnswerHistoryState.error(error: error);
        }
      },
      onError: (error, stackTrace) {
        return AnswerHistoryState.error(
          error: AppError.uncaught(message: error.toString()),
        );
      },
    );
  }

  Future<void> _onLoadAnswers(
    LoadAnswersEvent event,
    Emitter<AnswerHistoryState> emit,
  ) async {
    emit(const AnswerHistoryState.loading());

    final result = await _getAnswersBySessionAndUserUseCase.call(
      sessionId: event.sessionId,
      userId: event.userId,
    );

    switch (result) {
      case SuccessResult(:final data):
        final answeredQuestionIds = data
            .map((answer) => answer.questionId)
            .toSet();
        emit(
          AnswerHistoryState.loaded(
            answers: data,
            answeredQuestionIds: answeredQuestionIds,
          ),
        );
      case FailureResult(:final error):
        emit(AnswerHistoryState.error(error: error));
    }
  }
}
