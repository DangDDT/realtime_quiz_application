// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$entryRoute, $sessionRoute];

RouteBase get $entryRoute => GoRouteData.$route(
  path: '/entry',
  name: 'entry',
  factory: $EntryRoute._fromState,
);

mixin $EntryRoute on GoRouteData {
  static EntryRoute _fromState(GoRouterState state) => EntryRoute();

  @override
  String get location => GoRouteData.$location('/entry');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $sessionRoute => GoRouteData.$route(
  path: '/sessions/:sessionId',
  name: 'session',
  factory: $SessionRoute._fromState,
);

mixin $SessionRoute on GoRouteData {
  static SessionRoute _fromState(GoRouterState state) =>
      SessionRoute(sessionId: state.pathParameters['sessionId']!);

  SessionRoute get _self => this as SessionRoute;

  @override
  String get location => GoRouteData.$location(
    '/sessions/${Uri.encodeComponent(_self.sessionId)}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
