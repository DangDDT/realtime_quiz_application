import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Creates a Material Design 3 compliant [TextTheme] with custom fonts.
///
/// This function combines body and display fonts following the MD3 typography
/// scale specifications, ensuring proper font weights, letter spacing, and
/// line heights for optimal readability and visual hierarchy.
///
/// **Typography Assignment:**
/// - [bodyFont]: Used for body text, labels, and titles
/// - [displayFont]: Used for headlines and large display text
///
/// **Material 3 Typography Scale:**
/// - Display (Large/Medium/Small): Largest text, attention-grabbing headers
/// - Headline (Large/Medium/Small): High-emphasis section headers
/// - Title (Large/Medium/Small): Medium-emphasis text, list headers
/// - Body (Large/Medium/Small): Main content text
/// - Label (Large/Medium/Small): Buttons, tabs, and UI labels
///
/// **Parameters:**
/// - [bodyFont]: Google Font name for body/UI text (e.g., 'Roboto', 'Inter')
/// - [displayFont]: Google Font name for display text (e.g., 'Playfair Display')
/// - [baseTextTheme]: Optional base theme to apply fonts to, defaults to MD3
///
/// **Returns:** A fully configured [TextTheme] ready for use in [ThemeData]
///
/// **Example:**
/// ```dart
/// final textTheme = createTextTheme(
///   bodyFont: 'Inter',
///   displayFont: 'Playfair Display',
/// );
/// ```
TextTheme createTextTheme({
  required String bodyFont,
  required String displayFont,
  TextTheme? baseTextTheme,
}) {
  // Use provided base theme or Material 3 default with proper scale
  final base = baseTextTheme ?? ThemeData(useMaterial3: true).textTheme;

  // Apply Google Fonts to base text theme
  final bodyTextTheme = GoogleFonts.getTextTheme(bodyFont, base);
  final displayTextTheme = GoogleFonts.getTextTheme(displayFont, base);

  // Combine themes following Material Design 3 typography specifications
  return base.copyWith(
    // =========================================================================
    // Display Styles - Largest text on screen, reserved for short/important text
    // =========================================================================
    displayLarge: displayTextTheme.displayLarge?.copyWith(
      letterSpacing: -0.25,
      fontWeight: FontWeight.w400, // Regular
    ),
    displayMedium: displayTextTheme.displayMedium?.copyWith(
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: displayTextTheme.displaySmall?.copyWith(
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),

    // =========================================================================
    // Headline Styles - High-emphasis text for section headers
    // =========================================================================
    headlineLarge: displayTextTheme.headlineLarge?.copyWith(
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: displayTextTheme.headlineMedium?.copyWith(
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: displayTextTheme.headlineSmall?.copyWith(
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),

    // =========================================================================
    // Title Styles - Medium-emphasis text for list items and card headers
    // =========================================================================
    titleLarge: bodyTextTheme.titleLarge?.copyWith(
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),
    titleMedium: bodyTextTheme.titleMedium?.copyWith(
      letterSpacing: 0.15,
      fontWeight: FontWeight.w500, // Medium weight per MD3 spec
    ),
    titleSmall: bodyTextTheme.titleSmall?.copyWith(
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
    ),

    // =========================================================================
    // Body Styles - Main readable content text
    // =========================================================================
    bodyLarge: bodyTextTheme.bodyLarge?.copyWith(
      letterSpacing: 0.5,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: bodyTextTheme.bodyMedium?.copyWith(
      letterSpacing: 0.25,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: bodyTextTheme.bodySmall?.copyWith(
      letterSpacing: 0.4,
      fontWeight: FontWeight.w400,
    ),

    // =========================================================================
    // Label Styles - Text for buttons, tabs, and interactive components
    // =========================================================================
    labelLarge: bodyTextTheme.labelLarge?.copyWith(
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500, // Medium weight for labels
    ),
    labelMedium: bodyTextTheme.labelMedium?.copyWith(
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: bodyTextTheme.labelSmall?.copyWith(
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500,
    ),
  );
}
