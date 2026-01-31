import 'package:flutter/material.dart';
import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/routes/app_router.dart';
import 'package:realtime_quiz_app/core/theme/app_theme.dart';
import 'package:realtime_quiz_app/core/theme/quiz_color_scheme.dart';
import 'package:realtime_quiz_app/core/utils/helpers/text_theme_helper.dart';
import 'package:realtime_quiz_app/presentation/app/app.dart';

Future<void> main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Run app
  final String appName = 'Quiz App';
  final AppTheme appTheme = AppTheme(
    textTheme: createTextTheme(bodyFont: 'Inter', displayFont: 'Inter'),
    colorScheme: QuizColorScheme(),
    initialThemeMode: ThemeMode.dark,
  );
  final AppRouter appRouter = AppRouter();

  // Setup dependency injection
  await setupLocator();

  runApp(App(appName: appName, appTheme: appTheme, appRouter: appRouter));
}
