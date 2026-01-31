import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';
import 'package:realtime_quiz_app/presentation/leaderboard/widgets/leaderboard_list.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/participant_bloc.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Leaderboard'), centerTitle: true),
      body: BlocBuilder<ParticipantBloc, ParticipantState>(
        builder: (context, state) {
          return switch (state) {
            ParticipantInitialState() || ParticipantLoadingState() =>
              const Center(child: CircularProgressIndicator()),
            ParticipantErrorState(:final error) => Center(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Colors.red.shade700,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    Text(
                      'Error: ${error.message}',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            ParticipantSuccessState(:final participants) => LeaderboardList(
              participants: participants,
            ),
          };
        },
      ),
    );
  }
}
