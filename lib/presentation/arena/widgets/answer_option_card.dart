import 'package:flutter/material.dart';
import 'package:realtime_quiz_app/core/theme/app_radius.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';

class AnswerOptionCard extends StatelessWidget {
  const AnswerOptionCard({
    super.key,
    required this.label,
    required this.text,
    required this.color,
    this.isSelected = false,
    this.isCorrect = false,
    this.isWrong = false,
    this.isSubmitted = false,
    this.onTap,
  });

  final String label;
  final String text;
  final Color color;
  final bool isSelected;
  final bool isCorrect;
  final bool isWrong;
  final bool isSubmitted;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: isSubmitted ? null : onTap,
        borderRadius: BorderRadius.circular(AppRadius.xlg),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: _getBackgroundColor(),
            borderRadius: BorderRadius.circular(AppRadius.xlg),
            border: Border.all(
              color: _getBorderColor(),
              width: isSelected ? 3 : 2,
            ),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: color.withValues(alpha: 0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Row(
            children: [
              _OptionLabel(
                label: label,
                color: color,
                isSelected: isSelected,
                isCorrect: isCorrect,
                isWrong: isWrong,
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Text(
                  text,
                  style: textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                  ),
                ),
              ),
              if (isCorrect)
                const Icon(Icons.check_circle, color: Colors.white, size: 28),
              if (isWrong)
                const Icon(Icons.cancel, color: Colors.white, size: 28),
            ],
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor() {
    if (isCorrect) {
      return Colors.green.shade600;
    }
    if (isWrong) {
      return Colors.red.shade700;
    }
    return color;
  }

  Color _getBorderColor() {
    if (isCorrect) {
      return Colors.green.shade300;
    }
    if (isWrong) {
      return Colors.red.shade300;
    }
    if (isSelected) {
      return Colors.white;
    }
    return color.withValues(alpha: 0.3);
  }
}

class _OptionLabel extends StatelessWidget {
  const _OptionLabel({
    required this.label,
    required this.color,
    required this.isSelected,
    required this.isCorrect,
    required this.isWrong,
  });

  final String label;
  final Color color;
  final bool isSelected;
  final bool isCorrect;
  final bool isWrong;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: _getLabelBackgroundColor(),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Color _getLabelBackgroundColor() {
    if (isCorrect) {
      return Colors.green.shade700;
    }
    if (isWrong) {
      return Colors.red.shade800;
    }
    return color.withValues(alpha: 0.3);
  }
}
