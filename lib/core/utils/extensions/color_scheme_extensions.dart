import 'package:flutter/material.dart';
import 'package:realtime_quiz_app/core/theme/app_colors.dart';

/// {@template color_scheme_extensions}
/// Extension methods on ColorScheme to access custom quiz colors.
/// Provides easy access to quiz option colors, accent colors, and status colors.
/// {@endtemplate}
extension ColorSchemeExtensions on ColorScheme {
  // ============================================================================
  // Quiz Option Colors - Vibrant colors for quiz answer buttons
  // ============================================================================

  /// Option Red - Used for answer A (Cheerful example)
  Color get optionRed {
    return brightness == Brightness.light
        ? AppColors.optionRed.light.color
        : AppColors.optionRed.dark.color;
  }

  /// On Option Red - Text color on red option background
  Color get onOptionRed {
    return brightness == Brightness.light
        ? AppColors.optionRed.light.onColor
        : AppColors.optionRed.dark.onColor;
  }

  /// Option Blue - Used for answer B (Tired example)
  Color get optionBlue {
    return brightness == Brightness.light
        ? AppColors.optionBlue.light.color
        : AppColors.optionBlue.dark.color;
  }

  /// On Option Blue - Text color on blue option background
  Color get onOptionBlue {
    return brightness == Brightness.light
        ? AppColors.optionBlue.light.onColor
        : AppColors.optionBlue.dark.onColor;
  }

  /// Option Yellow - Used for answer C (Angry example)
  Color get optionYellow {
    return brightness == Brightness.light
        ? AppColors.optionYellow.light.color
        : AppColors.optionYellow.dark.color;
  }

  /// On Option Yellow - Text color on yellow option background
  Color get onOptionYellow {
    return brightness == Brightness.light
        ? AppColors.optionYellow.light.onColor
        : AppColors.optionYellow.dark.onColor;
  }

  /// Option Green - Used for answer D (Shy example)
  Color get optionGreen {
    return brightness == Brightness.light
        ? AppColors.optionGreen.light.color
        : AppColors.optionGreen.dark.color;
  }

  /// On Option Green - Text color on green option background
  Color get onOptionGreen {
    return brightness == Brightness.light
        ? AppColors.optionGreen.light.onColor
        : AppColors.optionGreen.dark.onColor;
  }

  // ============================================================================
  // Accent Colors - Additional vibrant colors for UI elements
  // ============================================================================

  /// Cyan - Used for progress bars, badges, and live indicators
  Color get cyan {
    return brightness == Brightness.light
        ? AppColors.cyan.light.color
        : AppColors.cyan.dark.color;
  }

  /// On Cyan - Text color on cyan background
  Color get onCyan {
    return brightness == Brightness.light
        ? AppColors.cyan.light.onColor
        : AppColors.cyan.dark.onColor;
  }

  /// Gold - Used for leaderboard rankings, achievements, and streaks
  Color get gold {
    return brightness == Brightness.light
        ? AppColors.gold.light.color
        : AppColors.gold.dark.color;
  }

  /// On Gold - Text color on gold background
  Color get onGold {
    return brightness == Brightness.light
        ? AppColors.gold.light.onColor
        : AppColors.gold.dark.onColor;
  }

  // ============================================================================
  // Status Colors - Success, Warning, Info
  // ============================================================================

  /// Success - Used for correct answers, achievements
  Color get success {
    return brightness == Brightness.light
        ? AppColors.success.light.color
        : AppColors.success.dark.color;
  }

  /// On Success - Text color on success background
  Color get onSuccess {
    return brightness == Brightness.light
        ? AppColors.success.light.onColor
        : AppColors.success.dark.onColor;
  }

  /// Warning - Used for warnings, time running out
  Color get warning {
    return brightness == Brightness.light
        ? AppColors.warning.light.color
        : AppColors.warning.dark.color;
  }

  /// On Warning - Text color on warning background
  Color get onWarning {
    return brightness == Brightness.light
        ? AppColors.warning.light.onColor
        : AppColors.warning.dark.onColor;
  }

  /// Info - Used for information, hints
  Color get info {
    return brightness == Brightness.light
        ? AppColors.info.light.color
        : AppColors.info.dark.color;
  }

  /// On Info - Text color on info background
  Color get onInfo {
    return brightness == Brightness.light
        ? AppColors.info.light.onColor
        : AppColors.info.dark.onColor;
  }

  // ============================================================================
  // Gradient Colors - For background gradients
  // ============================================================================

  /// Gradient Start - Top color for background gradients
  Color get gradientStart {
    return brightness == Brightness.light
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF0F0F1A);
  }

  /// Gradient End - Bottom color for background gradients with purple tint
  Color get gradientEnd {
    return brightness == Brightness.light
        ? const Color(0xFFF5F7FF)
        : const Color(0xFF1A0F2E);
  }
}
