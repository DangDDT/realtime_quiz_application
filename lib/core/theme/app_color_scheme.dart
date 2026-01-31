import 'package:flutter/material.dart';

/// {@template app_color_scheme}
/// Contains the app color scheme.
/// {@endtemplate}
abstract class AppColorScheme {
  /// App color scheme light
  ColorScheme lightScheme();

  /// App color scheme dark
  ColorScheme darkScheme();
}
