import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:realtime_quiz_app/core/theme/app_radius.dart';
import 'package:realtime_quiz_app/core/theme/app_spacing.dart';

class CustomPinCodeField extends StatefulWidget {
  const CustomPinCodeField({
    required this.onChanged,
    super.key,
    this.autoFocus = false,
    this.obscureText = false,
    this.length = 4,
    this.isReadOnly = false,
    this.onCompleted,
    this.autoUnfocus = true,
    this.autoDismissKeyboard = true,
    this.focusNode,
    this.error,
    this.enableAutoFill = true,
  });

  final void Function(String) onChanged;
  final void Function(String)? onCompleted;
  final bool autoFocus;
  final bool obscureText;
  final int? length;
  final bool isReadOnly;
  final bool autoUnfocus;
  final bool autoDismissKeyboard;
  final FocusNode? focusNode;
  final String? error;
  final bool enableAutoFill;

  @override
  State<CustomPinCodeField> createState() => _CustomPinCodeFieldState();
}

class _CustomPinCodeFieldState extends State<CustomPinCodeField> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PinCodeTextField(
      controller: _textController,
      focusNode: widget.focusNode,
      autoDisposeControllers: false,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      pinTheme: PinTheme(
        fieldOuterPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.sm,
        ),
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(AppRadius.xxlg),
        borderWidth: 1.5,
        activeColor: theme.hintColor,
        inactiveColor: theme.hintColor,
        selectedColor: theme.colorScheme.primary,
        selectedFillColor: theme.colorScheme.primary,
        inactiveFillColor: theme.hintColor,
        activeFillColor: theme.hintColor,
      ),
      cursorColor: theme.colorScheme.primary,
      backgroundColor: Colors.transparent,
      onCompleted: widget.onCompleted,
      autoFocus: widget.autoFocus,
      autoDismissKeyboard: widget.autoDismissKeyboard,
      autoUnfocus: widget.autoUnfocus,
      readOnly: widget.isReadOnly,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      animationType: AnimationType.scale,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      appContext: context,
      length: widget.length ?? 4,
    );
  }
}
