part of '../app_router.dart';

@TypedGoRoute<SessionRoute>(path: '/sessions/:sessionId', name: 'session')
class SessionRoute extends GoRouteData with $SessionRoute {
  SessionRoute({required this.sessionId});

  final String sessionId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SessionPage(sessionId: sessionId);
  }
}
