part of '../app_router.dart';

@TypedGoRoute<EntryRoute>(path: '/entry', name: 'entry')
class EntryRoute extends GoRouteData with $EntryRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EntryPage();
  }
}
