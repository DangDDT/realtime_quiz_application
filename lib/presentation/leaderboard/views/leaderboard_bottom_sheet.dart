import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';
import 'package:realtime_quiz_app/presentation/leaderboard/widgets/leaderboard_list.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/participant_bloc.dart';

class LeaderboardBottomSheet extends StatelessWidget {
  const LeaderboardBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
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
                    Container(
                      padding: const EdgeInsets.all(AppSpacing.sm),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.emoji_events,
                        color: Colors.amber.shade800,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Text(
                      'Leaderboard',
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
                child: BlocBuilder<ParticipantBloc, ParticipantState>(
                  builder: (context, state) {
                    return switch (state) {
                      ParticipantInitialState() || ParticipantLoadingState() =>
                        const Center(child: CircularProgressIndicator()),
                      ParticipantErrorState(:final error) => Center(
                        child: Text('Error: ${error.message}'),
                      ),
                      ParticipantSuccessState(:final participants) =>
                        LeaderboardList(
                          participants: participants,
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
