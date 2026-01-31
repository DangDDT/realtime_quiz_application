import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_quiz_app/core/routes/codec/app_router_extra_codec.dart';
import 'package:realtime_quiz_app/domain/enums/session_state_enum.dart';
import 'package:realtime_quiz_app/presentation/entry/views/entry_page.dart';
import 'package:realtime_quiz_app/presentation/session/views/session_page.dart';

part 'app_router.g.dart';
part 'routes/entry_route.dart';
part 'routes/session_route.dart';

class AppRouter {
  AppRouter() {
    _router = GoRouter(
      initialLocation: '/',
      navigatorKey: rootNavigatorKey,
      debugLogDiagnostics: true,
      extraCodec: const AppRouterExtraCodec(),
      redirect: (context, state) async {
        final currentLocation = state.uri.path.toString();
        if (currentLocation == '/') {
          return state.namedLocation('entry');
        }
        return null;
      },
      routes: [$entryRoute, $sessionRoute],
    );
  }

  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  late final GoRouter _router;

  GoRouter get router => _router;

  void dispose() {
    _router.dispose();
  }
}
