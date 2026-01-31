import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/entities/question.dart';
import 'package:realtime_quiz_app/domain/models/app_error.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/usecases/get_questions_by_quiz_id/get_questions_by_quiz_id_use_case.dart';

part 'question_bloc.freezed.dart';
part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc({
    required GetQuestionsByQuizIdUseCase getQuestionsByQuizIdUseCase,
  }) : _getQuestionsByQuizIdUseCase = getQuestionsByQuizIdUseCase,
       super(const QuestionState.initial()) {
    on<LoadQuestionsEvent>(_onLoadQuestions, transformer: droppable());
    on<NextQuestionEvent>(_onNextQuestion, transformer: droppable());
    on<PreviousQuestionEvent>(_onPreviousQuestion, transformer: droppable());
    on<GoToQuestionEvent>(_onGoToQuestion, transformer: droppable());
  }

  final GetQuestionsByQuizIdUseCase _getQuestionsByQuizIdUseCase;

  Future<void> _onLoadQuestions(
    LoadQuestionsEvent event,
    Emitter<QuestionState> emit,
  ) async {
    emit(const QuestionState.loading());

    final result = await _getQuestionsByQuizIdUseCase.call(event.quizId);

    switch (result) {
      case SuccessResult(:final data):
        if (data.isEmpty) {
          emit(const QuestionState.empty());
        } else {
          // Find first unanswered question
          int startIndex = 0;
          if (event.answeredQuestionIds != null && event.answeredQuestionIds!.isNotEmpty) {
            startIndex = data.indexWhere(
              (q) => !event.answeredQuestionIds!.contains(q.id),
            );
            // If all questions are answered, start from the first one
            if (startIndex == -1) {
              startIndex = 0;
            }
          }

          emit(QuestionState.loaded(
            questions: data,
            currentQuestionIndex: startIndex,
            currentQuestion: data[startIndex],
          ));
        }
      case FailureResult(:final error):
        emit(QuestionState.error(error: error));
    }
  }

  Future<void> _onNextQuestion(
    NextQuestionEvent event,
    Emitter<QuestionState> emit,
  ) async {
    final currentState = state;
    if (currentState is QuestionLoadedState) {
      int nextIndex = currentState.currentQuestionIndex + 1;

      // Skip answered questions if provided
      if (event.answeredQuestionIds != null && event.answeredQuestionIds!.isNotEmpty) {
        while (nextIndex < currentState.questions.length) {
          final question = currentState.questions[nextIndex];
          if (!event.answeredQuestionIds!.contains(question.id)) {
            break;
          }
          nextIndex++;
        }
      }

      if (nextIndex < currentState.questions.length) {
        emit(currentState.copyWith(
          currentQuestionIndex: nextIndex,
          currentQuestion: currentState.questions[nextIndex],
        ));
      }
    }
  }

  Future<void> _onPreviousQuestion(
    PreviousQuestionEvent event,
    Emitter<QuestionState> emit,
  ) async {
    final currentState = state;
    if (currentState is QuestionLoadedState) {
      final previousIndex = currentState.currentQuestionIndex - 1;

      if (previousIndex >= 0) {
        emit(
          currentState.copyWith(
            currentQuestionIndex: previousIndex,
            currentQuestion: currentState.questions[previousIndex],
          ),
        );
      }
    }
  }

  Future<void> _onGoToQuestion(
    GoToQuestionEvent event,
    Emitter<QuestionState> emit,
  ) async {
    final currentState = state;
    if (currentState is QuestionLoadedState) {
      if (event.questionIndex >= 0 &&
          event.questionIndex < currentState.questions.length) {
        emit(
          currentState.copyWith(
            currentQuestionIndex: event.questionIndex,
            currentQuestion: currentState.questions[event.questionIndex],
          ),
        );
      }
    }
  }
}
