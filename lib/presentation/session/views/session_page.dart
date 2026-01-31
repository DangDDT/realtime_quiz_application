import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/routes/app_router.dart';
import 'package:realtime_quiz_app/domain/enums/toast_category_enum.dart';
import 'package:realtime_quiz_app/domain/services/toast_service.dart';
import 'package:realtime_quiz_app/presentation/arena/views/arena_page.dart';
import 'package:realtime_quiz_app/presentation/leaderboard/views/leaderboard_page.dart';
import 'package:realtime_quiz_app/presentation/lobby/views/lobby_page.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/participant_bloc.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/session_bloc.dart';

class SessionPage extends StatefulWidget {
  const SessionPage({required this.sessionId, super.key});

  final String sessionId;

  @override
  State<SessionPage> createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              sl<SessionBloc>()
                ..add(WatchSessionStatusEvent(sessionId: widget.sessionId)),
        ),
        BlocProvider(
          create: (_) =>
              sl<ParticipantBloc>()
                ..add(ParticipantStartedEvent(sessionId: widget.sessionId)),
        ),
      ],
      child: BlocListener<SessionBloc, SessionState>(
        listener: (context, state) {
          // Clear focus when changing pages
          FocusManager.instance.primaryFocus?.unfocus();

          final sessionId = state.mapOrNull(
            waiting: (waitingState) => waitingState.session.id,
            active: (activeState) => activeState.session.id,
            canceled: (canceledState) => canceledState.session.id,
            finished: (finishedState) => finishedState.session.id,
            leftSession: (leftSessionState) => leftSessionState.sessionId,
          );

          if (sessionId == null || sessionId.isEmpty) {
            sl<ToastService>().showToast(
              context,
              'Something went wrong',
              category: ToastCategoryEnum.info,
            );
            EntryRoute().pushReplacement(context);
            return;
          }

          state.when(
            loading: () {
              if (_pageController.hasClients) {
                _pageController.jumpToPage(0);
              }
            },
            waiting: (waitingState) {
              if (_pageController.hasClients) {
                _pageController.jumpToPage(1);
              }
            },
            active: (activeState) {
              if (_pageController.hasClients) {
                _pageController.jumpToPage(2);
              }
            },
            canceled: (canceledState) {
              sl<ToastService>().showToast(
                context,
                'Session canceled',
                category: ToastCategoryEnum.info,
              );
              EntryRoute().pushReplacement(context);
            },
            finished: (finishedState) {
              if (_pageController.hasClients) {
                _pageController.jumpToPage(3);
              }
            },
            error: (error, sessionId) {
              sl<ToastService>().showToast(
                context,
                error.message,
                category: ToastCategoryEnum.error,
              );
              EntryRoute().pushReplacement(context);
            },
            leftSession: (sessionId) {
              sl<ToastService>().showToast(
                context,
                'Session left successfully',
                category: ToastCategoryEnum.success,
              );
              EntryRoute().pushReplacement(context);
            },
          );
        },
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _LoadingPage(),
              LobbyPage(),
              ArenaPage(),
              LeaderboardPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoadingPage extends StatelessWidget {
  const _LoadingPage();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
