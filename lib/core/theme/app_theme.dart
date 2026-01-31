import 'package:flutter/material.dart';
import 'package:realtime_quiz_app/core/theme/app_button_sizes.dart';
import 'package:realtime_quiz_app/core/theme/app_color_scheme.dart';
import 'package:realtime_quiz_app/core/theme/app_radius.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';

/// {@template app_theme}
/// App theme data factory.
/// {@endtemplate}
class AppTheme {
  /// {@macro app_theme}
  const AppTheme({
    required this.textTheme,
    required this.colorScheme,
    required this.initialThemeMode,
  });

  final ThemeMode initialThemeMode;

  final AppColorScheme colorScheme;

  /// Current text theme that is used in theme data
  final TextTheme textTheme;

  // ============================================================================
  // Design System Constants (Material Design 3 Spec)
  // ============================================================================

  /// Elevation scale following Material Design 3 guidelines
  /// Reference: https://m3.material.io/styles/elevation/overview
  static const double _elevationLevel0 = 0; // Baseline surface
  static const double _elevationLevel1 = 1; // Cards, outlined buttons
  static const double _elevationLevel2 = 2; // Filled buttons, menus
  static const double _elevationLevel3 = 3; // Dialogs, pickers, snackbars
  static const double _elevationLevel4 = 4; // FAB (resting)

  /// Shadow opacity values for elevation effects
  static const double _shadowOpacitySubtle = 0.04; // Very subtle shadows
  static const double _shadowOpacityLight = 0.08; // Light shadows
  static const double _shadowOpacityMedium = 0.12; // Medium shadows

  /// Divider standard opacity following Material 3
  static const double _dividerOpacity = 0.12;

  /// Border widths for consistent stroke styling
  static const double _borderWidthThin = 0.5;
  static const double _borderWidthNormal = 1.0;
  static const double _borderWidthThick = 2.0;

  // ============================================================================
  // Public Theme Getters
  // ============================================================================

  /// Dark theme.
  /// Use [AppTheme.dark] to get the dark theme.
  ThemeData dark() {
    return theme(colorScheme.darkScheme());
  }

  /// Light theme.
  /// Use [AppTheme.light] to get the light theme.
  ThemeData light() {
    return theme(colorScheme.lightScheme());
  }

  /// Create a theme from a [ColorScheme].
  ///
  /// This can be use to create a custom theme.
  ThemeData theme(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      textTheme: textTheme.apply(
        bodyColor: colorScheme.onSurface,
        displayColor: colorScheme.onSurface,
      ),
      // Surface & Layout
      dividerTheme: _dividerTheme(colorScheme),
      appBarTheme: _appBarTheme(colorScheme),
      bottomAppBarTheme: _bottomAppBarTheme(colorScheme),
      // Navigation
      bottomNavigationBarTheme: _bottomNavigationBarTheme(colorScheme),
      navigationBarTheme: _navigationBarTheme(colorScheme),
      // Containers
      cardTheme: _cardTheme(colorScheme),
      dialogTheme: _dialogTheme(colorScheme),
      listTileTheme: _listTileTheme(colorScheme),
      // Buttons
      filledButtonTheme: _filledButtonTheme(colorScheme),
      outlinedButtonTheme: _outlinedButtonTheme(colorScheme),
      textButtonTheme: _textButtonTheme(colorScheme),
      iconButtonTheme: _iconButtonTheme(colorScheme),
      floatingActionButtonTheme: _floatingActionButtonTheme(colorScheme),
      // Inputs & Selection
      inputDecorationTheme: _inputDecorationTheme(colorScheme),
      dropdownMenuTheme: _dropdownMenuTheme(colorScheme),
      chipTheme: _chipTheme(colorScheme),
      switchTheme: _switchTheme(colorScheme),
      checkboxTheme: _checkboxTheme(colorScheme),
      // Menus & Overlays
      snackBarTheme: _snackBarTheme(colorScheme),
      popupMenuTheme: _popupMenuTheme(colorScheme),
    );
  }

  // ============================================================================
  // Component Theme Builders
  // ============================================================================

  /// AppBar theme following Material 3 specifications
  /// Uses surface tint and subtle elevation for modern look
  AppBarTheme _appBarTheme(ColorScheme colorScheme) {
    return AppBarTheme(
      elevation: _elevationLevel0,
      scrolledUnderElevation: _elevationLevel2,
      shadowColor: colorScheme.shadow.withValues(alpha: _shadowOpacityLight),
      backgroundColor: colorScheme.surface,
      surfaceTintColor: colorScheme.surfaceTint,
      centerTitle: true,
      titleTextStyle: textTheme.titleLarge?.copyWith(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
      actionsIconTheme: IconThemeData(
        color: colorScheme.onSurfaceVariant,
        size: 24,
      ),
    );
  }

  /// Bottom app bar with Material 3 surface container styling
  BottomAppBarThemeData _bottomAppBarTheme(ColorScheme colorScheme) {
    return BottomAppBarThemeData(
      color: colorScheme.surfaceContainer,
      surfaceTintColor: colorScheme.surfaceTint,
      elevation: _elevationLevel2,
      shadowColor: colorScheme.shadow.withValues(alpha: _shadowOpacityLight),
    );
  }

  /// Bottom navigation bar with MD3 label styles
  /// Note: Consider migrating to NavigationBar for full MD3 compliance
  BottomNavigationBarThemeData _bottomNavigationBarTheme(
    ColorScheme colorScheme,
  ) {
    return BottomNavigationBarThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      elevation: _elevationLevel3,
      selectedItemColor: colorScheme.onSecondaryContainer,
      unselectedItemColor: colorScheme.onSurfaceVariant,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: textTheme.labelMedium,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  }

  /// Card theme with Material 3 elevated surface
  /// Uses surface tint for elevation expression
  /// Increased border radius for modern, gaming-style look
  CardThemeData _cardTheme(ColorScheme colorScheme) {
    return CardThemeData(
      color: colorScheme.surfaceContainer,
      surfaceTintColor: Colors.transparent,
      elevation: _elevationLevel1,
      shadowColor: colorScheme.shadow.withValues(alpha: _shadowOpacitySubtle),
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(AppRadius.xlg)),
        side: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.4),
          width: _borderWidthThin,
        ),
      ),
    );
  }

  /// Chip theme with pill-shaped design
  ChipThemeData _chipTheme(ColorScheme colorScheme) {
    return const ChipThemeData(
      showCheckmark: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.lg)),
      ),
    );
  }

  /// Dialog theme following Material 3 elevation level 3
  DialogThemeData _dialogTheme(ColorScheme colorScheme) {
    return DialogThemeData(
      backgroundColor: colorScheme.surfaceContainerHigh,
      surfaceTintColor: colorScheme.surfaceTint,
      shadowColor: colorScheme.shadow.withValues(alpha: _shadowOpacityMedium),
      elevation: _elevationLevel3,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.xlg)),
      ),
      actionsPadding: const EdgeInsets.all(AppSpacing.md),
      titleTextStyle: textTheme.headlineSmall?.copyWith(
        color: colorScheme.onSurface,
      ),
      contentTextStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
    );
  }

  /// Divider theme using Material 3 outline variant with standard opacity
  DividerThemeData _dividerTheme(ColorScheme colorScheme) {
    return DividerThemeData(
      color: colorScheme.outlineVariant.withValues(alpha: _dividerOpacity),
      thickness: _borderWidthThin,
      space: AppSpacing.md,
    );
  }

  /// Dropdown menu theme with Material 3 menu elevation
  DropdownMenuThemeData _dropdownMenuTheme(ColorScheme colorScheme) {
    return DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        isDense: true,
        constraints: BoxConstraints(
          minHeight: AppButtonSizes.smallMinimumSize.height,
          maxHeight: AppButtonSizes.smallMaximumSize.height,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.lg)),
        ),
      ),
      menuStyle: MenuStyle(
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(colorScheme.surfaceContainer),
        surfaceTintColor: WidgetStateProperty.all(colorScheme.surfaceTint),
        elevation: WidgetStateProperty.all(_elevationLevel2),
        shadowColor: WidgetStateProperty.all(
          colorScheme.shadow.withValues(alpha: _shadowOpacityMedium),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(vertical: AppSpacing.xs),
        ),
      ),
    );
  }

  /// Filled button theme following Material 3 specifications
  /// Enhanced for gaming UI with prominent rounded style
  FilledButtonThemeData _filledButtonTheme(ColorScheme colorScheme) {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.xlg)),
        ),
        minimumSize: AppButtonSizes.defaultMinimumSize,
        maximumSize: AppButtonSizes.defaultMaximumSize,
        textStyle: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
        elevation: _elevationLevel0,
        shadowColor: colorScheme.shadow.withValues(alpha: _shadowOpacityLight),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xlg,
          vertical: AppSpacing.md,
        ),
      ),
    );
  }

  /// Input decoration theme with Material 3 filled text field styling
  /// Enhanced border radius for modern gaming UI
  InputDecorationTheme _inputDecorationTheme(ColorScheme colorScheme) {
    return InputDecorationTheme(
      fillColor: colorScheme.surfaceContainer,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xlg,
        vertical: AppSpacing.lg,
      ),
      hintStyle: textTheme.bodyLarge?.copyWith(
        color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
      ),
      labelStyle: textTheme.bodyLarge?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
      floatingLabelStyle: textTheme.bodySmall?.copyWith(
        color: colorScheme.primary,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: const BorderRadius.all(Radius.circular(AppRadius.lg)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: const BorderRadius.all(Radius.circular(AppRadius.lg)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,

        borderRadius: const BorderRadius.all(Radius.circular(AppRadius.lg)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: const BorderRadius.all(Radius.circular(AppRadius.lg)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: const BorderRadius.all(Radius.circular(AppRadius.lg)),
      ),
    );
  }

  /// List tile theme with Material 3 typography scale
  ListTileThemeData _listTileTheme(ColorScheme colorScheme) {
    return ListTileThemeData(
      tileColor: Colors.transparent,
      selectedTileColor: colorScheme.secondaryContainer,
      selectedColor: colorScheme.onSecondaryContainer,
      iconColor: colorScheme.onSurfaceVariant,
      textColor: colorScheme.onSurface,
      titleTextStyle: textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      ),
      subtitleTextStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
      leadingAndTrailingTextStyle: textTheme.labelSmall?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xs,
      ),
      minLeadingWidth: 40,
      minVerticalPadding: AppSpacing.sm,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),
      ),
      enableFeedback: true,
    );
  }

  /// Outlined button theme with Material 3 outline styling
  OutlinedButtonThemeData _outlinedButtonTheme(ColorScheme colorScheme) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.primary,
        side: BorderSide(color: colorScheme.outline, width: _borderWidthThick),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.xlg)),
        ),
        minimumSize: AppButtonSizes.defaultMinimumSize,
        maximumSize: AppButtonSizes.defaultMaximumSize,
        textStyle: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xlg,
          vertical: AppSpacing.md,
        ),
      ),
    );
  }

  /// Popup menu theme following Material 3 menu elevation level
  PopupMenuThemeData _popupMenuTheme(ColorScheme colorScheme) {
    return PopupMenuThemeData(
      enableFeedback: true,
      position: PopupMenuPosition.under,
      color: colorScheme.surfaceContainer,
      surfaceTintColor: colorScheme.surfaceTint,
      elevation: _elevationLevel2,
      shadowColor: colorScheme.shadow.withValues(alpha: _shadowOpacityMedium),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.sm)),
      ),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return textTheme.labelLarge?.copyWith(
            color: colorScheme.onSecondaryContainer,
          );
        }
        return textTheme.labelLarge?.copyWith(color: colorScheme.onSurface);
      }),
    );
  }

  /// SnackBar theme with Material 3 inverse surface styling
  SnackBarThemeData _snackBarTheme(ColorScheme colorScheme) {
    return SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: colorScheme.inverseSurface,
      contentTextStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onInverseSurface,
      ),
      actionTextColor: colorScheme.inversePrimary,
      elevation: _elevationLevel3,
      closeIconColor: colorScheme.onInverseSurface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.sm)),
      ),
      insetPadding: const EdgeInsets.all(AppSpacing.md),
    );
  }

  // ============================================================================
  // Additional Material 3 Component Themes
  // ============================================================================

  /// NavigationBar theme (Material 3 replacement for BottomNavigationBar)
  NavigationBarThemeData _navigationBarTheme(ColorScheme colorScheme) {
    return NavigationBarThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      surfaceTintColor: colorScheme.surfaceTint,
      elevation: _elevationLevel2,
      height: 80,
      indicatorColor: colorScheme.secondaryContainer,
      indicatorShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.lg)),
      ),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return textTheme.labelMedium?.copyWith(
            color: colorScheme.onSecondaryContainer,
            fontWeight: FontWeight.w600,
          );
        }
        return textTheme.labelMedium?.copyWith(
          color: colorScheme.onSurfaceVariant,
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(
            color: colorScheme.onSecondaryContainer,
            size: 24,
          );
        }
        return IconThemeData(color: colorScheme.onSurfaceVariant, size: 24);
      }),
    );
  }

  /// TextButton theme for Material 3
  TextButtonThemeData _textButtonTheme(ColorScheme colorScheme) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.xlg)),
        ),
        minimumSize: AppButtonSizes.defaultMinimumSize,
        maximumSize: AppButtonSizes.defaultMaximumSize,
        textStyle: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
      ),
    );
  }

  /// IconButton theme for Material 3
  IconButtonThemeData _iconButtonTheme(ColorScheme colorScheme) {
    return IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: colorScheme.onSurfaceVariant,
        iconSize: 24,
        padding: const EdgeInsets.all(AppSpacing.sm),
        minimumSize: const Size(40, 40),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  /// FloatingActionButton theme following Material 3 specs
  FloatingActionButtonThemeData _floatingActionButtonTheme(
    ColorScheme colorScheme,
  ) {
    return FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primaryContainer,
      foregroundColor: colorScheme.onPrimaryContainer,
      elevation: _elevationLevel3,
      focusElevation: _elevationLevel3,
      hoverElevation: _elevationLevel4,
      highlightElevation: _elevationLevel3,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.lg)),
      ),
      iconSize: 24,
      extendedTextStyle: textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Switch theme using Material 3 colors
  SwitchThemeData _switchTheme(ColorScheme colorScheme) {
    return SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return colorScheme.onSurface.withValues(alpha: 0.38);
        }
        if (states.contains(WidgetState.selected)) {
          return colorScheme.onPrimary;
        }
        return colorScheme.outline;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return colorScheme.surfaceContainerHighest.withValues(alpha: 0.12);
        }
        if (states.contains(WidgetState.selected)) {
          return colorScheme.primary;
        }
        return colorScheme.surfaceContainerHighest;
      }),
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.transparent;
        }
        return colorScheme.outline;
      }),
    );
  }

  /// Checkbox theme using Material 3 colors
  CheckboxThemeData _checkboxTheme(ColorScheme colorScheme) {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return colorScheme.onSurface.withValues(alpha: 0.38);
        }
        if (states.contains(WidgetState.selected)) {
          return colorScheme.primary;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(colorScheme.onPrimary),
      side: BorderSide(
        color: colorScheme.onSurfaceVariant,
        width: _borderWidthThick,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.xxs),
      ),
    );
  }
}
