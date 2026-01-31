import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/routes/app_router.dart';
import 'package:realtime_quiz_app/core/theme/app_gap.dart';
import 'package:realtime_quiz_app/domain/enums/toast_category_enum.dart';
import 'package:realtime_quiz_app/domain/services/toast_service.dart';
import 'package:realtime_quiz_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:realtime_quiz_app/presentation/entry/cubit/verification_session_cubit.dart';
import 'package:realtime_quiz_app/presentation/widgets/custom_pin_code_field.dart';
import 'package:realtime_quiz_app/presentation/widgets/form_confirm_button.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<VerificationSessionCubit>(),
      child: BlocListener<VerificationSessionCubit, VerificationSessionState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          final toastService = sl<ToastService>();
          state.maybeMap(
            success: (successState) {
              toastService.showToast(
                context,
                'Session joined successfully',
                category: ToastCategoryEnum.success,
              );
              SessionRoute(sessionId: successState.sessionId).push(context);
            },
            noSessionFound: (noSessionFoundState) {
              toastService.showToast(
                context,
                'No session found',
                category: ToastCategoryEnum.info,
              );
            },
            error: (errorState) {
              toastService.showToast(
                context,
                errorState.message,
                category: ToastCategoryEnum.error,
              );
            },
            orElse: () {},
          );
        },
        child: const _EntryPageView(),
      ),
    );
  }
}

class _EntryPageView extends HookWidget {
  const _EntryPageView();

  @override
  Widget build(BuildContext context) {
    final pinCode = useState<String>('');
    final nicknameController = useTextEditingController();

    void handleJoinGame(BuildContext context) {
      final toastService = sl<ToastService>();
      final currentUser = context.read<AuthBloc>().state.map(
        authenticated: (authenticated) => authenticated.user,
        unauthenticated: (unauthenticated) => null,
      );
      if (currentUser == null) {
        toastService.showToast(context, 'Not connected with system');
        return;
      }
      final pin = pinCode.value;
      final nickname = nicknameController.text.trim();

      if (pin.length != 6) {
        toastService.showToast(context, 'Please enter 6-digit PIN');
        return;
      }

      if (nickname.isEmpty) {
        toastService.showToast(context, 'Please enter your nickname');
        return;
      }

      context.read<VerificationSessionCubit>().verifySession(
        pinCode: pin,
        nickname: nickname,
        userId: currentUser.id,
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const _LogoSection(),
                AppGap.md,
                const _TitleSection(),
                AppGap.md,
                _PinInputSection(onChanged: (value) => pinCode.value = value),
                AppGap.sm,
                _NicknameInputSection(controller: nicknameController),
                AppGap.xxlg,
                _JoinButton(onPressed: () => handleJoinGame(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LogoSection extends StatelessWidget {
  const _LogoSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: SweepGradient(
          colors: [
            const Color(0xFF00CED1),
            const Color(0xFF1E90FF),
            const Color(0xFFFF8C00),
            const Color(0xFFFFA500),
            const Color(0xFF00CED1),
          ],
          stops: const [0.0, 0.25, 0.5, 0.75, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF7B2CBF).withValues(alpha: 0.5),
            blurRadius: 50,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: Icon(
          Icons.school_rounded,
          size: 70,
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      spacing: 12,
      children: [
        Text(
          'QuickVocab',
          style: theme.textTheme.displayMedium?.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
          ),
        ),
        Text(
          'Enter your details to join the session',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
          ),
        ),
      ],
    );
  }
}

class _PinInputSection extends StatelessWidget {
  const _PinInputSection({required this.onChanged});

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          'Game PIN',
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '123',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: CustomPinCodeField(
                length: 6,
                autoFocus: false,
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _NicknameInputSection extends StatelessWidget {
  // ignore: unused_element_parameter
  const _NicknameInputSection({required this.controller, this.onSubmitted});

  final TextEditingController controller;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          'Nickname',
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextField(
          controller: controller,
          textInputAction: TextInputAction.done,
          onSubmitted: onSubmitted,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person_outline_rounded,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
            ),
            hintText: 'Choose a nickname',
            hintStyle: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ],
    );
  }
}

class _JoinButton extends StatelessWidget {
  const _JoinButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final verificationState = context
        .select<VerificationSessionCubit, VerificationSessionState>(
          (cubit) => cubit.state,
        );
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: FormConfirmButton(
        onPressed: onPressed,
        state: verificationState.map(
          initial: (initialState) => FormConfirmButtonState.idle,
          loading: (loadingState) => FormConfirmButtonState.loading,
          error: (errorState) => FormConfirmButtonState.error,
          success: (successState) => FormConfirmButtonState.success,
          noSessionFound: (noSessionFoundState) => FormConfirmButtonState.idle,
        ),
        idleChild: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Text(
              'JOIN GAME',
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            Icon(
              Icons.arrow_forward_rounded,
              size: 24,
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ],
        ),
        loadingChild: Center(
          child: CircularProgressIndicator(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}
