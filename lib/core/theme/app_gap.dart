import 'package:gap/gap.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';

/// Default gaps for consistent spacing in the app UI.
///
/// Provides predefined [Gap] widgets using [AppSpacing] values
/// for consistent vertical and horizontal spacing throughout the app.
abstract class AppGap {
  /// Gap using the base space unit (16pt)
  static const Gap spaceUnitGap = Gap(AppSpacing.spaceUnit);

  /// Extra extra extra small gap (1pt)
  static const Gap xxxs = Gap(AppSpacing.xxxs);

  /// Extra extra small gap (2pt)
  static const Gap xxs = Gap(AppSpacing.xxs);

  /// Extra small gap (4pt)
  static const Gap xs = Gap(AppSpacing.xs);

  /// Small gap (8pt)
  static const Gap sm = Gap(AppSpacing.sm);

  /// Medium gap (12pt)
  static const Gap md = Gap(AppSpacing.md);

  /// Large gap (16pt)
  static const Gap lg = Gap(AppSpacing.lg);

  /// Extra large gap (24pt)
  static const Gap xlg = Gap(AppSpacing.xlg);

  /// Extra extra large gap (40pt)
  static const Gap xxlg = Gap(AppSpacing.xxlg);

  /// Extra extra extra large gap (64pt)
  static const Gap xxxlg = Gap(AppSpacing.xxxlg);
}
