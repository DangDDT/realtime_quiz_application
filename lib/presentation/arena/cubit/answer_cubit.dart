import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/entities/question.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/usecases/submit_answer/submit_answer_use_case.dart';

part 'answer_cubit.freezed.dart';
part 'answer_state.dart';

class AnswerCubit extends Cubit<AnswerState> {
  AnswerCubit({
    required SubmitAnswerUseCase submitAnswerUseCase,
  })  : _submitAnswerUseCase = submitAnswerUseCase,
        super(const AnswerState.initial());

  final SubmitAnswerUseCase _submitAnswerUseCase;

  void selectAnswer({
    required int optionIndex,
    required String questionId,
  }) {
    emit(AnswerState.selected(
      selectedOptionIndex: optionIndex,
      questionId: questionId,
    ));
  }

  Future<void> submitAnswer({
    required String sessionId,
    required Question question,
    required int selectedOptionIndex,
  }) async {
    emit(const AnswerState.submitting());

    // Call RPC function to submit answer
    final result = await _submitAnswerUseCase.call(
      sessionId: sessionId,
      questionId: question.id,
      selectedOptionIndex: selectedOptionIndex,
    );

    switch (result) {
      case SuccessResult():
        // Calculate locally for immediate UI feedback
        final isCorrect = selectedOptionIndex == question.correctOptionIndex;
        final pointsEarned = isCorrect ? question.points : 0;

        emit(AnswerState.submitted(
          selectedOptionIndex: selectedOptionIndex,
          correctOptionIndex: question.correctOptionIndex,
          isCorrect: isCorrect,
          pointsEarned: pointsEarned,
          questionId: question.id,
        ));
      case FailureResult(:final error):
        emit(AnswerState.error(message: error.message));
    }
  }

  void resetAnswer() {
    emit(const AnswerState.initial());
  }

  bool hasAnsweredQuestion(String questionId) {
    final currentState = state;
    if (currentState is AnswerSubmittedState) {
      return currentState.questionId == questionId;
    }
    return false;
  }

  int? getSelectedOptionForQuestion(String questionId) {
    final currentState = state;
    if (currentState is AnswerSelectedState &&
        currentState.questionId == questionId) {
      return currentState.selectedOptionIndex;
    }
    if (currentState is AnswerSubmittedState &&
        currentState.questionId == questionId) {
      return currentState.selectedOptionIndex;
    }
    return null;
  }
}
