import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';
import 'package:realtime_quiz_app/domain/entities/answer.dart';
import 'package:realtime_quiz_app/domain/entities/question.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/usecases/get_question_by_id/get_question_by_id_use_case.dart';
import 'package:realtime_quiz_app/presentation/arena/bloc/answer_history_bloc.dart';
import 'package:realtime_quiz_app/presentation/arena/bloc/question_bloc.dart';
import 'package:realtime_quiz_app/presentation/arena/cubit/answer_cubit.dart';
import 'package:realtime_quiz_app/presentation/arena/widgets/answer_option_card.dart';
import 'package:realtime_quiz_app/presentation/arena/widgets/arena_header.dart';
import 'package:realtime_quiz_app/presentation/arena/widgets/question_card.dart';
import 'package:realtime_quiz_app/presentation/arena/widgets/timer_bar.dart';
import 'package:realtime_quiz_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/session_bloc.dart';
import 'package:realtime_quiz_app/presentation/leaderboard/views/leaderboard_bottom_sheet.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/participant_bloc.dart';
import 'package:realtime_quiz_app/presentation/session/views/widgets/leave_session_button.dart';

class ArenaPage extends StatelessWidget {
  const ArenaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final session = context.read<SessionBloc>().state.maybeWhen(
              active: (session) => session,
              orElse: () => null,
            );

            if (session == null) {
              return sl<QuestionBloc>();
            }

            return sl<QuestionBloc>()
              ..add(QuestionEvent.loadQuestions(quizId: session.quiz.id));
          },
        ),
        BlocProvider(
          create: (context) {
            final userId = context.read<AuthBloc>().state.maybeWhen(
              authenticated: (user) => user.id,
              orElse: () => null,
            );
            final session = context.read<SessionBloc>().state.maybeWhen(
              active: (session) => session,
              orElse: () => null,
            );

            return sl<AnswerHistoryBloc>()..add(
              AnswerHistoryEvent.watchAnswers(
                sessionId: session!.id,
                userId: userId!,
              ),
            );
          },
        ),

        BlocProvider(create: (context) => sl<AnswerCubit>()),
      ],
      child: const _ArenaPageView(),
    );
  }
}

class _ArenaPageView extends StatelessWidget {
  const _ArenaPageView();

  void _handleRetry(BuildContext context) {
    final session = context.read<SessionBloc>().state.maybeWhen(
      active: (session) => session,
      orElse: () => null,
    );

    if (session != null) {
      context.read<QuestionBloc>().add(
        LoadQuestionsEvent(quizId: session.quiz.id),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: BlocBuilder<QuestionBloc, QuestionState>(
          builder: (context, questionState) {
            return switch (questionState) {
              QuestionInitialState() => const Center(
                child: Text('Ready to start!'),
              ),
              QuestionLoadingState() => const Center(
                child: CircularProgressIndicator(),
              ),
              QuestionEmptyState() => _BuildEmptyState(
                onRetry: () => _handleRetry(context),
              ),
              QuestionErrorState(:final error) => _BuildErrorState(
                errorMessage: error.message,
                onRetry: () => _handleRetry(context),
              ),
              QuestionLoadedState(
                :final currentQuestion,
                :final questions,
                :final currentQuestionIndex,
              ) =>
                _BuildArenaContent(
                  question: currentQuestion,
                  totalQuestions: questions.length,
                  currentIndex: currentQuestionIndex,
                ),
            };
          },
        ),
      ),
      persistentFooterButtons: const [LeaveSessionButton()],
    );
  }
}

class _BuildArenaContent extends StatelessWidget {
  const _BuildArenaContent({
    required this.question,
    required this.totalQuestions,
    required this.currentIndex,
  });

  final Question question;
  final int totalQuestions;
  final int currentIndex;

  void _navigateToHistory(BuildContext context) {
    final session = context.read<SessionBloc>().state.maybeWhen(
      active: (session) => session,
      orElse: () => null,
    );
    final userId = context.read<AuthBloc>().state.maybeWhen(
      authenticated: (user) => user.id,
      orElse: () => null,
    );
    if (session == null || userId == null) {
      return;
    }
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (bottomSheetContext) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: context.read<SessionBloc>()),
          BlocProvider.value(
            value: context.read<AnswerHistoryBloc>()
              ..add(
                AnswerHistoryEvent.loadAnswers(
                  sessionId: session.id,
                  userId: userId,
                ),
              ),
          ),
        ],
        child: const _AnswerHistoryBottomSheet(),
      ),
    );
  }

  void _navigateToLeaderboard(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (bottomSheetContext) => BlocProvider.value(
        value: context.read<ParticipantBloc>(),
        child: const LeaderboardBottomSheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ArenaHeader(
          onHistoryTap: () => _navigateToHistory(context),
          onLeaderboardTap: () => _navigateToLeaderboard(context),
        ),
        const TimerBar(),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              children: [
                QuestionCard(
                  question: question,
                  currentIndex: currentIndex,
                  totalQuestions: totalQuestions,
                ),
                const SizedBox(height: AppSpacing.xlg),
                _BuildAnswerOptions(question: question),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _BuildAnswerOptions extends StatelessWidget {
  const _BuildAnswerOptions({required this.question});

  final Question question;

  static const List<String> _optionLabels = ['A', 'B', 'C', 'D'];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<AnswerHistoryBloc, AnswerHistoryState>(
      listenWhen: (previous, current) =>
          current != previous ||
          (current is AnswerHistoryLoadedState &&
              previous is AnswerHistoryLoadedState &&
              current.answeredQuestionIds != previous.answeredQuestionIds),
      listener: (context, state) {
        if (state is AnswerHistoryLoadedState &&
            state.answeredQuestionIds.contains(question.id)) {
          Future.delayed(const Duration(milliseconds: 110), () async {
            if (context.mounted) {
              final questionState = context.read<QuestionBloc>().state;
              if (questionState is QuestionLoadedState) {
                // Check if we are still on the same question
                if (questionState.currentQuestion.id != question.id) return;

                final isLastQuestion =
                    questionState.currentQuestionIndex >=
                    questionState.questions.length - 1;

                if (!isLastQuestion) {
                  await Future.delayed(const Duration(milliseconds: 1000));
                  if (context.mounted) {
                    context.read<QuestionBloc>().add(
                      QuestionEvent.nextQuestion(
                        answeredQuestionIds: state.answeredQuestionIds,
                      ),
                    );
                    context.read<AnswerCubit>().resetAnswer();
                  }
                } else {
                  // Last question - could navigate to results or show completion
                  // TODO: Add navigation to results page
                }
              }
            }
          });
        }
      },
      child: BlocBuilder<AnswerCubit, AnswerState>(
        builder: (context, answerState) {
          return Column(
            spacing: AppSpacing.md,
            children: [
              for (int i = 0; i < question.options.length; i++)
                AnswerOptionCard(
                  label: _optionLabels[i],
                  text: question.options[i],
                  color: theme.colorScheme.surfaceContainerHighest.withValues(
                    alpha: 0.5,
                  ),
                  isSelected: _isOptionSelected(answerState, i),
                  isCorrect: _isOptionCorrect(answerState, i),
                  isWrong: _isOptionWrong(answerState, i),
                  isSubmitted: answerState is AnswerSubmittedState,
                  onTap: () => _handleOptionTap(context, i),
                ),
            ],
          );
        },
      ),
    );
  }

  bool _isOptionSelected(AnswerState state, int optionIndex) {
    if (state is AnswerSelectedState) {
      return state.selectedOptionIndex == optionIndex;
    }
    if (state is AnswerSubmittedState) {
      return state.selectedOptionIndex == optionIndex;
    }
    return false;
  }

  bool _isOptionCorrect(AnswerState state, int optionIndex) {
    if (state is AnswerSubmittedState) {
      return optionIndex == state.correctOptionIndex;
    }
    return false;
  }

  bool _isOptionWrong(AnswerState state, int optionIndex) {
    if (state is AnswerSubmittedState) {
      return state.selectedOptionIndex == optionIndex && !state.isCorrect;
    }
    return false;
  }

  void _handleOptionTap(BuildContext context, int optionIndex) {
    final answerCubit = context.read<AnswerCubit>();
    final currentState = answerCubit.state;

    // Don't allow selection if already submitted
    if (currentState is AnswerSubmittedState) {
      return;
    }

    // Get session ID from SessionBloc
    final session = context.read<SessionBloc>().state.maybeWhen(
      active: (session) => session,
      orElse: () => null,
    );

    if (session == null) {
      return;
    }

    // Select the answer
    answerCubit.selectAnswer(optionIndex: optionIndex, questionId: question.id);

    // Auto-submit after a short delay
    Future.delayed(const Duration(milliseconds: 300), () {
      if (context.mounted) {
        answerCubit.submitAnswer(
          sessionId: session.id,
          question: question,
          selectedOptionIndex: optionIndex,
        );
      }
    });
  }
}

class _BuildErrorState extends StatelessWidget {
  const _BuildErrorState({required this.errorMessage, required this.onRetry});

  final String errorMessage;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xlg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSpacing.lg,
          children: [
            Container(
              padding: const EdgeInsets.all(AppSpacing.xlg),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline,
                size: 64,
                color: Colors.red.shade700,
              ),
            ),
            Text(
              'Oops! Something went wrong',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              errorMessage,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.md),
            _RetryButton(onRetry: onRetry),
          ],
        ),
      ),
    );
  }
}

class _BuildEmptyState extends StatelessWidget {
  const _BuildEmptyState({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xlg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSpacing.lg,
          children: [
            Container(
              padding: const EdgeInsets.all(AppSpacing.xlg),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.quiz_outlined,
                size: 64,
                color: Colors.orange.shade700,
              ),
            ),
            Text(
              'No Questions Available',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'This quiz doesn\'t have any questions yet.\nPlease try again later.',
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.md),
            _RetryButton(onRetry: onRetry),
          ],
        ),
      ),
    );
  }
}

class _RetryButton extends StatelessWidget {
  const _RetryButton({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onRetry,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xlg,
            vertical: AppSpacing.md,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple.shade600, Colors.purple.shade800],
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.purple.shade600.withValues(alpha: 0.3),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: AppSpacing.sm,
            children: [
              const Icon(Icons.refresh, color: Colors.white, size: 24),
              Text(
                'Try Again',
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AnswerHistoryBottomSheet extends StatelessWidget {
  const _AnswerHistoryBottomSheet();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            children: [
              const SizedBox(height: AppSpacing.sm),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: colorScheme.onSurface.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Row(
                  children: [
                    Icon(Icons.history, color: colorScheme.primary),
                    const SizedBox(width: AppSpacing.sm),
                    Text(
                      'Answer History',
                      style: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Expanded(
                child: BlocBuilder<AnswerHistoryBloc, AnswerHistoryState>(
                  builder: (context, state) {
                    return switch (state) {
                      AnswerHistoryInitialState() => const Center(
                        child: Text('Initializing...'),
                      ),
                      AnswerHistoryLoadingState() => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      AnswerHistoryErrorState(:final error) => Center(
                        child: Padding(
                          padding: const EdgeInsets.all(AppSpacing.xlg),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error_outline,
                                size: 64,
                                color: Colors.red.shade700,
                              ),
                              const SizedBox(height: AppSpacing.lg),
                              Text(
                                'Error loading history',
                                style: textTheme.titleLarge,
                              ),
                              const SizedBox(height: AppSpacing.sm),
                              Text(
                                error.message,
                                style: textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      AnswerHistoryLoadedState(:final answers) =>
                        answers.isEmpty
                            ? Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(AppSpacing.xlg),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.quiz_outlined,
                                        size: 64,
                                        color: Colors.grey.shade400,
                                      ),
                                      const SizedBox(height: AppSpacing.lg),
                                      Text(
                                        'No Answers Yet',
                                        style: textTheme.titleLarge?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: AppSpacing.sm),
                                      Text(
                                        'Start answering questions!',
                                        style: textTheme.bodyMedium?.copyWith(
                                          color: colorScheme.onSurface
                                              .withValues(alpha: 0.7),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : _BuildAnswerHistoryList(
                                answers: answers,
                                scrollController: scrollController,
                              ),
                    };
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _BuildAnswerHistoryList extends StatelessWidget {
  const _BuildAnswerHistoryList({
    required this.answers,
    required this.scrollController,
  });

  final List<Answer> answers;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      padding: const EdgeInsets.all(AppSpacing.lg),
      itemCount: answers.length,
      separatorBuilder: (context, index) =>
          const SizedBox(height: AppSpacing.md),
      itemBuilder: (context, index) {
        final answer = answers[index];
        return _AnswerHistoryCard(answer: answer, index: index + 1);
      },
    );
  }
}

class _AnswerHistoryCard extends StatelessWidget {
  const _AnswerHistoryCard({required this.answer, required this.index});

  final Answer answer;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return FutureBuilder<Question?>(
      future: _loadQuestion(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoadingCard(colorScheme);
        }

        final question = snapshot.data;
        if (question == null) {
          return _buildErrorCard(colorScheme, textTheme);
        }

        return _buildAnswerCard(question, colorScheme, textTheme);
      },
    );
  }

  Future<Question?> _loadQuestion(BuildContext context) async {
    final result = await sl<GetQuestionByIdUseCase>().call(answer.questionId);
    return result.when(success: (data) => data, failure: (error) => null);
  }

  Widget _buildLoadingCard(ColorScheme colorScheme) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildErrorCard(ColorScheme colorScheme, TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        'Question #$index - Failed to load',
        style: textTheme.bodyMedium?.copyWith(color: Colors.red.shade700),
      ),
    );
  }

  Widget _buildAnswerCard(
    Question question,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    final optionLabels = ['A', 'B', 'C', 'D'];
    final selectedOption = answer.selectedOptionIndex < question.options.length
        ? question.options[answer.selectedOptionIndex]
        : 'Unknown';
    final selectedLabel = answer.selectedOptionIndex < optionLabels.length
        ? optionLabels[answer.selectedOptionIndex]
        : '?';

    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: answer.isCorrect ? Colors.green.shade300 : Colors.red.shade300,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSpacing.md,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
                decoration: BoxDecoration(
                  color: answer.isCorrect
                      ? Colors.green.shade100
                      : Colors.red.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: AppSpacing.xs,
                  children: [
                    Icon(
                      answer.isCorrect ? Icons.check_circle : Icons.cancel,
                      color: answer.isCorrect
                          ? Colors.green.shade700
                          : Colors.red.shade700,
                      size: 20,
                    ),
                    Text(
                      answer.isCorrect ? 'Correct' : 'Wrong',
                      style: textTheme.labelLarge?.copyWith(
                        color: answer.isCorrect
                            ? Colors.green.shade700
                            : Colors.red.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                'Q$index',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
          Text(
            question.content,
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: answer.isCorrect
                  ? Colors.green.shade50
                  : Colors.red.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: answer.isCorrect
                        ? Colors.green.shade600
                        : Colors.red.shade600,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      selectedLabel,
                      style: textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Text(
                    selectedOption,
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: answer.isCorrect
                          ? Colors.green.shade700
                          : Colors.red.shade700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (!answer.isCorrect) ...[
            const Divider(),
            Row(
              spacing: AppSpacing.sm,
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  size: 18,
                  color: Colors.green.shade700,
                ),
                Expanded(
                  child: Text(
                    'Correct: ${optionLabels[question.correctOptionIndex]} - ${question.options[question.correctOptionIndex]}',
                    style: textTheme.bodySmall?.copyWith(
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
