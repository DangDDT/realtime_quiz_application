import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';
import 'package:realtime_quiz_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/session_bloc.dart';

class LeaveSessionButton extends StatelessWidget {
  const LeaveSessionButton({super.key});

  void _onLeaveLobby(BuildContext context) {
    final userId = context.read<AuthBloc>().state.when(
      authenticated: (user) => user.id,
      unauthenticated: () => null,
    );
    final sessionId = context.read<SessionBloc>().state.when(
      loading: () => null,
      waiting: (session) => session.id,
      active: (session) => session.id,
      canceled: (session) => session.id,
      finished: (session) => session.id,
      error: (error, sessionId) => sessionId,
      leftSession: (sessionId) => sessionId,
    );
    if (userId == null || sessionId == null) {
      return;
    }
    context.read<SessionBloc>().add(
      LeaveSessionEvent(sessionId: sessionId, userId: userId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () => _onLeaveLobby(context),
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.error,
          side: BorderSide(
            color: colorScheme.error.withValues(alpha: 0.5),
            width: 1.5,
          ),
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.logout, size: 20, color: colorScheme.error),
            const SizedBox(width: AppSpacing.sm),
            Text(
              'Leave Quiz',
              style: theme.textTheme.labelLarge?.copyWith(
                color: colorScheme.error,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
