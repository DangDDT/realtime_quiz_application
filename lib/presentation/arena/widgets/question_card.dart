import 'package:flutter/material.dart';
import 'package:realtime_quiz_app/core/theme/app_radius.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';
import 'package:realtime_quiz_app/domain/entities/question.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
    required this.currentIndex,
    required this.totalQuestions,
  });

  final Question question;
  final int currentIndex;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xlg),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.purple.shade900, Colors.purple.shade700],
        ),
        borderRadius: BorderRadius.circular(AppRadius.xxlg),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.shade900.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        spacing: AppSpacing.lg,
        children: [
          _CategoryBadge(text: 'Synonym Challenge', textTheme: textTheme),
          Text(
            question.content,
            textAlign: TextAlign.center,
            style: textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
          _QuestionIndicator(
            currentIndex: currentIndex,
            totalQuestions: totalQuestions,
            textTheme: textTheme,
          ),
        ],
      ),
    );
  }
}

class _CategoryBadge extends StatelessWidget {
  const _CategoryBadge({required this.text, required this.textTheme});

  final String text;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: textTheme.labelMedium?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _QuestionIndicator extends StatelessWidget {
  const _QuestionIndicator({
    required this.currentIndex,
    required this.totalQuestions,
    required this.textTheme,
  });

  final int currentIndex;
  final int totalQuestions;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Question ${currentIndex + 1} of $totalQuestions',
      style: textTheme.bodySmall?.copyWith(
        color: Colors.white.withValues(alpha: 0.8),
      ),
    );
  }
}
