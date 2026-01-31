import 'dart:ui';

/// {@template app_colors}
/// Contains the app colors.
/// {@endtemplate}
abstract class AppColors {
  /// Success
  static const success = ExtendedColor(
    seed: Color(0xff4ccd99),
    value: Color(0xff4ccd99),
    light: ColorFamily(
      color: Color(0xff1f6f4e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffa5f4d5),
      onColorContainer: Color(0xff002115),
    ),
    dark: ColorFamily(
      color: Color(0xff6ee7c8),
      onColor: Color(0xff00382a),
      colorContainer: Color(0xff0f573e),
      onColorContainer: Color(0xffa4fcd8),
    ),
  );

  /// Warning
  static const warning = ExtendedColor(
    seed: Color(0xffffb65c),
    value: Color(0xffffb65c),
    light: ColorFamily(
      color: Color(0xff8d4b00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd8a9),
      onColorContainer: Color(0xff301400),
    ),
    dark: ColorFamily(
      color: Color(0xffffcf8a),
      onColor: Color(0xff4c2600),
      colorContainer: Color(0xffb05f00),
      onColorContainer: Color(0xffffe2bc),
    ),
  );

  /// Info
  static const info = ExtendedColor(
    seed: Color(0xff7c8fff),
    value: Color(0xff7c8fff),
    light: ColorFamily(
      color: Color(0xff2d44d9),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffdbe0ff),
      onColorContainer: Color(0xff101a5b),
    ),
    dark: ColorFamily(
      color: Color(0xff9fb1ff),
      onColor: Color(0xff001c6b),
      colorContainer: Color(0xff3848d5),
      onColorContainer: Color(0xffe0e4ff),
    ),
  );

  /// Surface Variant
  static const surfaceVariant = ExtendedColor(
    seed: Color(0xffe8ecf8),
    value: Color(0xffe8ecf8),
    light: ColorFamily(
      color: Color(0xffe8ecf8),
      onColor: Color(0xff1d2335),
      colorContainer: Color(0xffd0d6e4),
      onColorContainer: Color(0xff12182a),
    ),
    dark: ColorFamily(
      color: Color(0xff2a2838),
      onColor: Color(0xfff0f0ff),
      colorContainer: Color(0xff33323f),
      onColorContainer: Color(0xfff0f0ff),
    ),
  );

  // ============================================================================
  // Quiz Option Colors - Vibrant accent colors for quiz answers
  // ============================================================================

  /// Option Red - Used for answer A
  static const optionRed = ExtendedColor(
    seed: Color(0xffff5366),
    value: Color(0xffff5366),
    light: ColorFamily(
      color: Color(0xffd32f2f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffcdd2),
      onColorContainer: Color(0xff410e0b),
    ),
    dark: ColorFamily(
      color: Color(0xffff5366),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff8a1e2d),
      onColorContainer: Color(0xffffd9dd),
    ),
  );

  /// Option Blue - Used for answer B
  static const optionBlue = ExtendedColor(
    seed: Color(0xff4d7bff),
    value: Color(0xff4d7bff),
    light: ColorFamily(
      color: Color(0xff1976d2),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffc5e3ff),
      onColorContainer: Color(0xff001d36),
    ),
    dark: ColorFamily(
      color: Color(0xff4d7bff),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff2a4a8a),
      onColorContainer: Color(0xffb8d9ff),
    ),
  );

  /// Option Yellow - Used for answer C
  static const optionYellow = ExtendedColor(
    seed: Color(0xffffb84d),
    value: Color(0xffffb84d),
    light: ColorFamily(
      color: Color(0xfff57c00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffe0b2),
      onColorContainer: Color(0xff3e2723),
    ),
    dark: ColorFamily(
      color: Color(0xffffb84d),
      onColor: Color(0xff3d2800),
      colorContainer: Color(0xff8a5000),
      onColorContainer: Color(0xffffe3c5),
    ),
  );

  /// Option Green - Used for answer D
  static const optionGreen = ExtendedColor(
    seed: Color(0xff4cd964),
    value: Color(0xff4cd964),
    light: ColorFamily(
      color: Color(0xff388e3c),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffc8e6c9),
      onColorContainer: Color(0xff1b5e20),
    ),
    dark: ColorFamily(
      color: Color(0xff4cd964),
      onColor: Color(0xff003a0f),
      colorContainer: Color(0xff1d5e2d),
      onColorContainer: Color(0xffb8f5c8),
    ),
  );

  // ============================================================================
  // Additional Accent Colors
  // ============================================================================

  /// Cyan - Used for progress bars, badges, and highlights
  static const cyan = ExtendedColor(
    seed: Color(0xff5fdeea),
    value: Color(0xff5fdeea),
    light: ColorFamily(
      color: Color(0xff00acc1),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb2ebf2),
      onColorContainer: Color(0xff006064),
    ),
    dark: ColorFamily(
      color: Color(0xff5fdeea),
      onColor: Color(0xff001f24),
      colorContainer: Color(0xff2a6b74),
      onColorContainer: Color(0xffb8f5ff),
    ),
  );

  /// Gold - Used for leaderboard rankings and achievements
  static const gold = ExtendedColor(
    seed: Color(0xffffd700),
    value: Color(0xffffd700),
    light: ColorFamily(
      color: Color(0xfffbc02d),
      onColor: Color(0xff3e2723),
      colorContainer: Color(0xfffff9c4),
      onColorContainer: Color(0xff33230b),
    ),
    dark: ColorFamily(
      color: Color(0xffffd700),
      onColor: Color(0xff3d2800),
      colorContainer: Color(0xff8a6800),
      onColorContainer: Color(0xffffe9b3),
    ),
  );
}

/// {@template extended_color}
/// The data of the extended color.
/// {@endtemplate}
class ExtendedColor {
  /// {@macro extended_color}
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.dark,
  });

  /// The seed color of the extended color.
  final Color seed;

  /// The value of the extended color.
  final Color value;

  /// The light color blend of the extended color.
  final ColorFamily light;

  /// The dark color blend of the extended color.
  final ColorFamily dark;
}

/// {@template color_family}
/// The data of the color family. The color family is the color and its
/// variants.
/// {@endtemplate}
class ColorFamily {
  /// {@macro color_family}
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  /// The color of the color family.
  final Color color;

  /// The on color of the color family.
  final Color onColor;

  /// The color container of the color family.
  final Color colorContainer;

  /// The on color container of the color family.
  final Color onColorContainer;
}
