import 'dart:ui';

/// The sizes of the buttons in the app.
/// Designed for gaming UI with larger, more prominent buttons
abstract class AppButtonSizes {
  /// The maximum size of the small variant of the button.
  static const smallMaximumSize = Size(double.infinity, 44);

  /// The minimum size of the small variant of the button.
  static const smallMinimumSize = Size(0, 44);

  /// The minimum size of a button.
  static const defaultMinimumSize = Size(80, 56);

  /// The maximum size of a button.
  static const defaultMaximumSize = Size(double.infinity, 56);

  /// The minimum size of the large variant of the button (like JOIN GAME).
  static const largeMinimumSize = Size(double.infinity, 64);

  /// The maximum size of the large variant of the button.
  static const largeMaximumSize = Size(double.infinity, 64);

  /// The minimum size of quiz option buttons (square-ish).
  static const quizOptionMinimumSize = Size(160, 120);

  /// The maximum size of quiz option buttons.
  static const quizOptionMaximumSize = Size(double.infinity, 140);
}

/// The sizes of the icon buttons in the app.
abstract class AppIconButtonSizes {
  /// The minimum size of the small variant of the button.
  static const smallMinimumSize = Size(40, 40);

  /// The maximum size of the small variant of the button.
  static const smallMaximumSize = Size(40, 40);

  /// The minimum size of a button.
  static const defaultMinimumSize = Size(56, 56);

  /// The maximum size of a button.
  static const defaultMaximumSize = Size(56, 56);

  /// The minimum size of the large variant of the button.
  static const largeMinimumSize = Size(64, 64);

  /// The maximum size of the large variant of the button.
  static const largeMaximumSize = Size(64, 64);
}
