import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum FormConfirmButtonState { idle, loading, error, success }

class FormConfirmButton extends HookWidget {
  const FormConfirmButton({
    required this.onPressed,
    required this.state,
    this.idleChild,
    this.loadingChild,
    this.errorChild,
    this.successChild,
    super.key,
  });

  final VoidCallback? onPressed;
  final FormConfirmButtonState state;
  final Widget? idleChild;
  final Widget? loadingChild;
  final Widget? errorChild;
  final Widget? successChild;

  @override
  Widget build(BuildContext context) {
    final shakeController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    final shakeAnimation = useAnimation(shakeController);

    final previousState = usePrevious(state);

    useEffect(() {
      final isWhenError =
          previousState != null &&
          previousState != state &&
          state == FormConfirmButtonState.error;

      if (isWhenError) {
        shakeController
          ..reset()
          ..forward();
      }

      return null;
    }, [state, previousState, shakeController]);

    final shakeOffset = state == FormConfirmButtonState.error
        ? (shakeAnimation * 10 * (1 - shakeAnimation)) *
              (shakeAnimation < 0.5 ? 1 : -1)
        : 0.0;

    return Transform.translate(
      offset: Offset(shakeOffset, 0),
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: switch (state) {
            FormConfirmButtonState.error => Theme.of(context).colorScheme.error,
            _ => Theme.of(context).colorScheme.primary,
          },
        ),
        onPressed: onPressed,
        child: switch (state) {
          FormConfirmButtonState.idle => _FormConfirmButtonIdle(
            child: idleChild,
          ),
          FormConfirmButtonState.loading => _FormConfirmButtonLoading(
            child: loadingChild,
          ),
          FormConfirmButtonState.error => _FormConfirmButtonError(
            child: errorChild,
          ),
          FormConfirmButtonState.success => _FormConfirmButtonSuccess(
            child: successChild,
          ),
        },
      ),
    );
  }
}

class _FormConfirmButtonIdle extends StatelessWidget {
  const _FormConfirmButtonIdle({required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return child ?? const Text('Processing');
  }
}

class _FormConfirmButtonLoading extends StatelessWidget {
  const _FormConfirmButtonLoading({required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return child ?? const Center(child: CircularProgressIndicator());
  }
}

class _FormConfirmButtonError extends StatelessWidget {
  const _FormConfirmButtonError({required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return child ?? const Center(child: Text('An error occurred'));
  }
}

class _FormConfirmButtonSuccess extends StatelessWidget {
  const _FormConfirmButtonSuccess({required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return child ?? const Text('Success');
  }
}
