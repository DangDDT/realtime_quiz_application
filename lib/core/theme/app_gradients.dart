import 'package:flutter/material.dart';

/// {@template app_gradients}
/// Pre-defined gradients for the quiz app.
/// Provides consistent gradient styles across the application.
/// {@endtemplate}
abstract class AppGradients {
  // ============================================================================
  // Background Gradients
  // ============================================================================

  /// Dark background gradient with purple undertone
  /// Perfect for main scaffold background in dark mode
  static const LinearGradient darkBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF0F0F1A), // Deep dark
      Color(0xFF1A0F2E), // Purple-tinted dark
    ],
  );

  /// Light background gradient with subtle blue tint
  /// Perfect for main scaffold background in light mode
  static const LinearGradient lightBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFFFFF), // Pure white
      Color(0xFFF5F7FF), // Subtle blue tint
    ],
  );

  // ============================================================================
  // Button & Card Gradients
  // ============================================================================

  /// Primary purple gradient for prominent CTAs
  /// Used for JOIN GAME button and important actions
  static const LinearGradient primaryPurple = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF9D4EFF), // Lighter purple
      Color(0xFF7F3DFF), // Primary purple
      Color(0xFF5929CC), // Darker purple
    ],
  );

  /// Cyan gradient for progress and badges
  static const LinearGradient cyanAccent = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF7EEAFF), // Light cyan
      Color(0xFF5FDEEA), // Cyan
      Color(0xFF2AC5D4), // Darker cyan
    ],
  );

  /// Gold gradient for achievements and rankings
  static const LinearGradient goldRanking = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFE68A), // Light gold
      Color(0xFFFFD700), // Gold
      Color(0xFFFFB800), // Darker gold
    ],
  );

  // ============================================================================
  // Glass Morphism Effects
  // ============================================================================

  /// Glassmorphism overlay for cards in dark mode
  static const LinearGradient glassCardDark = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0x30FFFFFF), // Semi-transparent white
      Color(0x10FFFFFF), // More transparent
    ],
  );

  /// Glassmorphism overlay for cards in light mode
  static const LinearGradient glassCardLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0x40FFFFFF), // Semi-transparent white
      Color(0x20FFFFFF), // More transparent
    ],
  );

  // ============================================================================
  // Shimmer & Loading Effects
  // ============================================================================

  /// Shimmer gradient for loading states in dark mode
  static const LinearGradient shimmerDark = LinearGradient(
    begin: Alignment(-1.0, -0.5),
    end: Alignment(1.0, 0.5),
    colors: [
      Color(0xFF1F1E2D), // Base dark
      Color(0xFF2A2838), // Lighter shimmer
      Color(0xFF1F1E2D), // Base dark
    ],
    stops: [0.0, 0.5, 1.0],
  );

  /// Shimmer gradient for loading states in light mode
  static const LinearGradient shimmerLight = LinearGradient(
    begin: Alignment(-1.0, -0.5),
    end: Alignment(1.0, 0.5),
    colors: [
      Color(0xFFE8ECF8), // Base light
      Color(0xFFFFFFFF), // Lighter shimmer
      Color(0xFFE8ECF8), // Base light
    ],
    stops: [0.0, 0.5, 1.0],
  );
}

/// {@template app_shadows}
/// Pre-defined shadow effects for the quiz app.
/// Provides consistent shadow styles across the application.
/// {@endtemplate}
abstract class AppShadows {
  /// Subtle shadow for cards in dark mode
  static const List<BoxShadow> cardDark = [
    BoxShadow(
      color: Color(0x40000000),
      blurRadius: 16,
      offset: Offset(0, 4),
      spreadRadius: 0,
    ),
  ];

  /// Subtle shadow for cards in light mode
  static const List<BoxShadow> cardLight = [
    BoxShadow(
      color: Color(0x1A000000),
      blurRadius: 12,
      offset: Offset(0, 2),
      spreadRadius: 0,
    ),
  ];

  /// Prominent shadow for floating elements (FAB, modals)
  static const List<BoxShadow> floating = [
    BoxShadow(
      color: Color(0x33000000),
      blurRadius: 24,
      offset: Offset(0, 8),
      spreadRadius: -4,
    ),
  ];

  /// Glow effect for primary buttons
  static const List<BoxShadow> buttonGlow = [
    BoxShadow(
      color: Color(0x407F3DFF), // Primary purple with transparency
      blurRadius: 20,
      offset: Offset(0, 4),
      spreadRadius: 0,
    ),
  ];

  /// Glow effect for quiz option buttons when selected
  static List<BoxShadow> optionGlow(Color color) => [
        BoxShadow(
          color: color.withValues(alpha: 0.4),
          blurRadius: 16,
          offset: const Offset(0, 4),
          spreadRadius: 0,
        ),
      ];
}
