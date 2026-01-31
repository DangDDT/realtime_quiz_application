import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/routes/app_router.dart';
import 'package:realtime_quiz_app/core/theme/app_theme.dart';
import 'package:realtime_quiz_app/domain/entities/auth_user.dart';
import 'package:realtime_quiz_app/presentation/auth/bloc/auth_bloc.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.appName,
    required this.appTheme,
    required this.appRouter,
    this.initialUser,
  });
  final String appName;
  final AppTheme appTheme;
  final AppRouter appRouter;
  final AuthUser? initialUser;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>.value(
          value: sl<AuthBloc>()..add(const AuthEvent.login()),
        ),
      ],
      child: _AuthStateHandler(appName, appTheme, appRouter),
    );
  }
}

class _AuthStateHandler extends StatelessWidget {
  const _AuthStateHandler(this.appName, this.appTheme, this.appRouter);
  final String appName;
  final AppTheme appTheme;
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state) {
          case AuthenticatedAuthState(:final user):
            _onAuthenticated(context, user);
          case UnauthenticatedAuthState():
            _onUnauthenticated(context);
        }
      },
      child: _AppView(appName, appTheme, appRouter),
    );
  }

  void _onAuthenticated(BuildContext context, AuthUser user) {}

  void _onUnauthenticated(BuildContext context) {}
}

class _AppView extends StatelessWidget {
  const _AppView(this.appName, this.appTheme, this.appRouter);
  final String appName;
  final AppTheme appTheme;
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: appTheme.initialThemeMode,
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: appTheme.light(),
      darkTheme: appTheme.dark(),
      routerConfig: appRouter.router,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
