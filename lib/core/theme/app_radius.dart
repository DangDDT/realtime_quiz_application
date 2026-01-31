/// Default border radius in App UI
/// Designed for modern, gaming-style rounded interfaces
abstract class AppRadius {
  /// Default unit of border radius (increased for more rounded look)
  static const double borderRadiusUnit = 20;

  /// xxs border radius (2dp) - for checkboxes, small indicators
  static const double xxs = 2;

  /// xs border radius (4dp) - for chips, tags
  static const double xs = 4;

  /// sm border radius (8dp) - for inputs, small cards
  static const double sm = 8;

  /// md border radius (12dp) - for standard cards, buttons
  static const double md = 12;

  /// lg border radius (16dp) - for large cards, quiz options
  static const double lg = 16;

  /// xlg border radius (20dp) - for primary buttons, prominent cards
  static const double xlg = 20;

  /// xxlg border radius (24dp) - for dialogs, modals
  static const double xxlg = 24;

  /// xxxlg border radius (28dp) - for hero elements
  static const double xxxlg = 28;

  /// full border radius (9999dp) - for circular elements
  static const double full = 9999;
}
