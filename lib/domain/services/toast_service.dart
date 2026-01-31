import 'package:flutter/material.dart';
import 'package:realtime_quiz_app/domain/enums/toast_category_enum.dart';

interface class ToastService {
  void showToast(
    BuildContext context,
    String title, {
    String? description,
    Duration? duration,
    Alignment? alignment,
    VoidCallback? onTap,
    VoidCallback? onClose,
    ToastCategoryEnum category = ToastCategoryEnum.info,
  }) => throw UnimplementedError();
}
