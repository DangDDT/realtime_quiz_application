import 'package:flutter/material.dart';
import 'package:realtime_quiz_app/domain/enums/toast_category_enum.dart';
import 'package:realtime_quiz_app/domain/services/toast_service.dart';
import 'package:toastification/toastification.dart';

class ToastServiceImpl implements ToastService {
  const ToastServiceImpl();

  static const Duration _defaultDuration = Duration(seconds: 3);
  static const Alignment _defaultAlignment = Alignment.topRight;

  @override
  void showToast(
    BuildContext context,
    String title, {
    String? description,
    Duration? duration,
    Alignment? alignment,
    VoidCallback? onTap,
    VoidCallback? onClose,
    ToastCategoryEnum category = ToastCategoryEnum.info,
  }) {
    switch (category) {
      case .success:
        success(
          context,
          title: title,
          description: description,
          autoCloseDuration: duration,
          alignment: alignment,
          onTap: onTap,
          onClose: onClose,
        );
      case .error:
        error(
          context,
          title: title,
          description: description,
          autoCloseDuration: duration,
          alignment: alignment,
          onTap: onTap,
          onClose: onClose,
        );
      case .warning:
        warning(
          context,
          title: title,
          description: description,
          autoCloseDuration: duration,
          alignment: alignment,
          onTap: onTap,
          onClose: onClose,
        );
      case .info:
        info(
          context,
          title: title,
          description: description,
          autoCloseDuration: duration,
          alignment: alignment,
          onTap: onTap,
          onClose: onClose,
        );
    }
  }

  /// 🎉 Success Toast - Dùng khi action thành công
  void success(
    BuildContext context, {
    required String title,
    String? description,
    Duration? autoCloseDuration,
    Alignment? alignment,
    VoidCallback? onTap,
    VoidCallback? onClose,
    bool showProgressBar = true,
    bool pauseOnHover = true,
    bool dragToClose = true,
  }) {
    final theme = Theme.of(context);
    final color = Colors.green;
    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flatColored,
      icon: Icon(Icons.check_circle_rounded, color: color),
      title: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      description: description != null
          ? Text(
              description,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
              ),
            )
          : null,
      alignment: alignment ?? _defaultAlignment,
      autoCloseDuration: autoCloseDuration ?? _defaultDuration,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: color.withValues(alpha: .06),
          blurRadius: 16,
          offset: const Offset(0, 4),
          spreadRadius: 0,
        ),
      ],
      showProgressBar: showProgressBar,
      closeOnClick: false,
      pauseOnHover: pauseOnHover,
      dragToClose: dragToClose,
      applyBlurEffect: false,
      callbacks: ToastificationCallbacks(
        onTap: onTap != null ? (_) => onTap() : null,
        onCloseButtonTap: onClose != null ? (_) => onClose() : null,
      ),
    );
  }

  /// ❌ Error Toast - Dùng khi có lỗi xảy ra
  void error(
    BuildContext context, {
    required String title,
    String? description,
    Duration? autoCloseDuration,
    Alignment? alignment,
    VoidCallback? onTap,
    VoidCallback? onClose,
    bool showProgressBar = true,
    bool pauseOnHover = true,
    bool dragToClose = true,
  }) {
    final theme = Theme.of(context);
    final color = Colors.red;
    toastification.show(
      context: context,
      type: ToastificationType.error,
      icon: Icon(Icons.error_rounded, color: color),
      style: ToastificationStyle.flatColored,
      title: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      description: description != null
          ? Text(
              description,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
              ),
            )
          : null,
      alignment: alignment ?? _defaultAlignment,
      autoCloseDuration: autoCloseDuration ?? _defaultDuration,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: theme.colorScheme.error.withValues(alpha: 0.06),
          blurRadius: 16,
          offset: const Offset(0, 4),
          spreadRadius: 0,
        ),
      ],
      showProgressBar: showProgressBar,
      closeOnClick: false,
      pauseOnHover: pauseOnHover,
      dragToClose: dragToClose,
      applyBlurEffect: false,
      callbacks: ToastificationCallbacks(
        onTap: onTap != null ? (_) => onTap() : null,
        onCloseButtonTap: onClose != null ? (_) => onClose() : null,
      ),
    );
  }

  /// ⚠️ Warning Toast - Dùng khi cần cảnh báo user
  void warning(
    BuildContext context, {
    required String title,
    String? description,
    Duration? autoCloseDuration,
    Alignment? alignment,
    VoidCallback? onTap,
    VoidCallback? onClose,
    bool showProgressBar = true,
    bool pauseOnHover = true,
    bool dragToClose = true,
  }) {
    final theme = Theme.of(context);
    final color = Colors.orange;
    toastification.show(
      context: context,
      type: ToastificationType.warning,
      style: ToastificationStyle.flatColored,
      icon: Icon(Icons.warning_rounded, color: color),
      title: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      description: description != null
          ? Text(
              description,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
              ),
            )
          : null,
      alignment: alignment ?? _defaultAlignment,
      autoCloseDuration: autoCloseDuration ?? _defaultDuration,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: color.withValues(alpha: .06),
          blurRadius: 16,
          offset: const Offset(0, 4),
          spreadRadius: 0,
        ),
      ],
      showProgressBar: showProgressBar,
      closeOnClick: false,
      pauseOnHover: pauseOnHover,
      dragToClose: dragToClose,
      applyBlurEffect: false,
      callbacks: ToastificationCallbacks(
        onTap: onTap != null ? (_) => onTap() : null,
        onCloseButtonTap: onClose != null ? (_) => onClose() : null,
      ),
    );
  }

  /// ℹ️ Info Toast - Dùng để hiển thị thông tin
  void info(
    BuildContext context, {
    required String title,
    String? description,
    Duration? autoCloseDuration,
    Alignment? alignment,
    VoidCallback? onTap,
    VoidCallback? onClose,
    bool showProgressBar = true,
    bool pauseOnHover = true,
    bool dragToClose = true,
  }) {
    final theme = Theme.of(context);
    final color = Colors.blue;
    toastification.show(
      context: context,
      type: ToastificationType.info,
      style: ToastificationStyle.flatColored,
      icon: Icon(Icons.info_rounded, color: color),
      title: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      description: description != null
          ? Text(
              description,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
              ),
            )
          : null,
      alignment: alignment ?? _defaultAlignment,
      autoCloseDuration: autoCloseDuration ?? _defaultDuration,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: color.withValues(alpha: .06),
          blurRadius: 16,
          offset: const Offset(0, 4),
          spreadRadius: 0,
        ),
      ],
      showProgressBar: showProgressBar,
      closeOnClick: false,
      pauseOnHover: pauseOnHover,
      dragToClose: dragToClose,
      applyBlurEffect: false,
      callbacks: ToastificationCallbacks(
        onTap: onTap != null ? (_) => onTap() : null,
        onCloseButtonTap: onClose != null ? (_) => onClose() : null,
      ),
    );
  }

  /// 🎨 Custom Toast - Hoàn toàn tùy chỉnh widget
  ///
  /// Sử dụng khi cần design custom hoàn toàn:
  /// ```dart
  /// toastService.custom(
  ///   context,
  ///   builder: (context, holder) {
  ///     return YourCustomWidget();
  ///   },
  /// );
  /// ```
  void custom(
    BuildContext context, {
    required Widget Function(BuildContext, ToastificationItem) builder,
    Duration? autoCloseDuration,
    Alignment? alignment,
    bool pauseOnHover = true,
    bool dragToClose = true,
  }) {
    toastification.showCustom(
      context: context,
      builder: builder,
      autoCloseDuration: autoCloseDuration ?? _defaultDuration,
      alignment: alignment ?? _defaultAlignment,
      animationDuration: const Duration(milliseconds: 300),
      animationBuilder: (context, animation, alignment, child) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position:
                Tween<Offset>(
                  begin: const Offset(0, -0.2),
                  end: Offset.zero,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOutCubic,
                  ),
                ),
            child: child,
          ),
        );
      },
    );
  }
}
