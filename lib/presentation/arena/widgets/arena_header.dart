import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';
import 'package:realtime_quiz_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/participant_bloc.dart';

class ArenaHeader extends StatelessWidget {
  const ArenaHeader({
    super.key,
    this.onPauseTap,
    this.onHistoryTap,
    this.onLeaderboardTap,
  });

  final VoidCallback? onPauseTap;
  final VoidCallback? onHistoryTap;
  final VoidCallback? onLeaderboardTap;

  @override
  Widget build(BuildContext context) {
    final userId = context.select<AuthBloc, String?>(
      (bloc) => bloc.state.maybeWhen(
        authenticated: (user) => user.id,
        orElse: () => null,
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Row(
        children: [
          if (onHistoryTap != null) _HistoryButton(onTap: onHistoryTap!),
          const SizedBox(width: AppSpacing.sm),
          if (onLeaderboardTap != null)
            _LeaderboardButton(onTap: onLeaderboardTap!),
          const Spacer(),
          Builder(
            builder: (context) {
              final points = context.select<ParticipantBloc, int>(
                (bloc) => bloc.state.maybeWhen(
                  success: (participants) {
                    return participants
                        .firstWhere(
                          (participant) => participant.userId == userId,
                          orElse: () => participants.first,
                        )
                        .score;
                  },
                  orElse: () => 0,
                ),
              );
              return _StatBadge(
                icon: Icons.stars_rounded,
                value: points.toString(),
                backgroundColor: Colors.purple.shade700,
              );
            },
          ),
        ],
      ),
    );
  }
}

class _HistoryButton extends StatelessWidget {
  const _HistoryButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.sm),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: colorScheme.outline.withValues(alpha: 0.3),
              width: 2,
            ),
          ),
          child: Icon(
            Icons.history,
            color: colorScheme.onSurface,
            size: 24,
          ),
        ),
      ),
    );
  }
}

class _StatBadge extends StatelessWidget {
  const _StatBadge({
    required this.icon,
    required this.value,
    required this.backgroundColor,
  });

  final IconData icon;
  final String value;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: AppSpacing.sm),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _LeaderboardButton extends StatelessWidget {
  const _LeaderboardButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.sm),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: colorScheme.outline.withValues(alpha: 0.3),
              width: 2,
            ),
          ),
          child: Icon(
            Icons.emoji_events,
            color: Colors.amber.shade700,
            size: 24,
          ),
        ),
      ),
    );
  }
}
