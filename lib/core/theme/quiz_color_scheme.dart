import 'package:flutter/material.dart';
import 'package:realtime_quiz_app/core/theme/app_color_scheme.dart';

/// {@template quiz_color_scheme}
/// QuickVocab Quiz color scheme implementation for dark/light themes.
/// Designed for gaming UI with vibrant purple accents.
/// {@endtemplate}
class QuizColorScheme implements AppColorScheme {
  /// {@macro quiz_color_scheme}
  const QuizColorScheme();

  @override
  ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      // Primary - Vibrant purple
      primary: Color(0xFF7F3DFF),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFE8D9FF),
      onPrimaryContainer: Color(0xFF24005D),
      // Secondary - Cyan accent
      secondary: Color(0xFF5FDEEA),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFB8F5FF),
      onSecondaryContainer: Color(0xFF001F24),
      // Tertiary - Pink accent
      tertiary: Color(0xFFFF5DA6),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFFFD9E8),
      onTertiaryContainer: Color(0xFF3D0020),
      // Error
      error: Color(0xFFFF5366),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFD9DD),
      onErrorContainer: Color(0xFF2D0007),
      // Surface & Background
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF1F1E2D),
      onSurfaceVariant: Color(0xFF4A4A58),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF8F7FF),
      surfaceContainer: Color(0xFFF2F0FF),
      surfaceContainerHigh: Color(0xFFECE9F8),
      surfaceContainerHighest: Color(0xFFE6E2F2),
      // Inverse
      inverseSurface: Color(0xFF313136),
      onInverseSurface: Color(0xFFF4F0FF),
      inversePrimary: Color(0xFFBEACFF),
      // Outline
      outline: Color(0xFF7A7A88),
      outlineVariant: Color(0xFFCBC5D4),
      // Shadow & Scrim
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      surfaceTint: Color(0xFF7F3DFF),
    );
  }

  @override
  ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      // Primary - Vibrant purple (slightly lighter for dark mode)
      primary: Color(0xFF7F3DFF),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF5929CC),
      onPrimaryContainer: Color(0xFFE8D9FF),
      // Secondary - Cyan accent
      secondary: Color(0xFF5FDEEA),
      onSecondary: Color(0xFF001F24),
      secondaryContainer: Color(0xFF2A6B74),
      onSecondaryContainer: Color(0xFFB8F5FF),
      // Tertiary - Pink accent
      tertiary: Color(0xFFFF5DA6),
      onTertiary: Color(0xFF3D0020),
      tertiaryContainer: Color(0xFF8A2E5C),
      onTertiaryContainer: Color(0xFFFFD9E8),
      // Error
      error: Color(0xFFFF5366),
      onError: Color(0xFF2D0007),
      errorContainer: Color(0xFF8A1E2D),
      onErrorContainer: Color(0xFFFFD9DD),
      // Surface & Background - Deep dark với purple undertone
      surface: Color(0xFF1F1E2D),
      onSurface: Color(0xFFF0F0FF),
      onSurfaceVariant: Color(0xFFB8B7D0),
      surfaceContainerLowest: Color(0xFF16151E),
      surfaceContainerLow: Color(0xFF1F1E2D),
      surfaceContainer: Color(0xFF2A2838),
      surfaceContainerHigh: Color(0xFF33323F),
      surfaceContainerHighest: Color(0xFF3F3E4D),
      // Inverse
      inverseSurface: Color(0xFFE8E7F5),
      onInverseSurface: Color(0xFF1A1920),
      inversePrimary: Color(0xFF5E2BCF),
      // Outline
      outline: Color(0xFF7C7B8F),
      outlineVariant: Color(0xFF3F3E4D),
      // Shadow & Scrim
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      surfaceTint: Color(0xFF7F3DFF),
    );
  }
}
