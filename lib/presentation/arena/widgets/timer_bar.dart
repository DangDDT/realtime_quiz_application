import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/session_bloc.dart';

class TimerBar extends StatefulWidget {
  const TimerBar({super.key});

  @override
  State<TimerBar> createState() => _TimerBarState();
}

class _TimerBarState extends State<TimerBar> {
  Timer? _timer;
  int _remainingSeconds = 0;
  int _totalSeconds = 0;

  @override
  void initState() {
    super.initState();
    _initializeTimer();
  }

  void _initializeTimer() {
    final sessionState = context.read<SessionBloc>().state;

    sessionState.maybeWhen(
      active: (session) {
        _totalSeconds = session.sessionActiveTime * 60;
        final now = DateTime.now();
        final remainingDuration = session.expiredAt!.difference(now);
        _remainingSeconds = remainingDuration.inSeconds.clamp(0, _totalSeconds);
        _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          if (mounted) {
            setState(() {
              if (_remainingSeconds > 0) {
                _remainingSeconds--;
              } else {
                _timer?.cancel();
              }
            });
          }
        });
      },
      orElse: () {},
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // Listen to session changes and update timer
    return BlocListener<SessionBloc, SessionState>(
      listener: (context, state) {
        state.maybeWhen(
          active: (session) {
            if (_totalSeconds != session.sessionActiveTime * 60) {
              _timer?.cancel();
              _initializeTimer();
            }
          },
          orElse: () {},
        );
      },
      child: _BuildTimerBarContent(
        remainingSeconds: _remainingSeconds,
        totalSeconds: _totalSeconds,
        colorScheme: colorScheme,
        textTheme: textTheme,
      ),
    );
  }
}

class _BuildTimerBarContent extends StatelessWidget {
  const _BuildTimerBarContent({
    required this.remainingSeconds,
    required this.totalSeconds,
    required this.colorScheme,
    required this.textTheme,
  });

  final int remainingSeconds;
  final int totalSeconds;
  final ColorScheme colorScheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final progress = totalSeconds > 0 ? remainingSeconds / totalSeconds : 0.0;
    final minutes = remainingSeconds ~/ 60;
    final seconds = remainingSeconds % 60;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSpacing.sm,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TIME REMAINING',
                style: textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurface.withValues(alpha: 0.6),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                '$minutes:${seconds.toString().padLeft(2, '0')}',
                style: textTheme.titleMedium?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              backgroundColor: colorScheme.surfaceContainerHighest,
              valueColor: AlwaysStoppedAnimation<Color>(
                _getProgressColor(progress),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getProgressColor(double progress) {
    if (progress > 0.5) {
      return Colors.purple.shade600;
    } else if (progress > 0.25) {
      return Colors.orange.shade600;
    } else {
      return Colors.red.shade600;
    }
  }
}
