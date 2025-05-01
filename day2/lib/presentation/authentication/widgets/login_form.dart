import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:day2/application/authenication/authentication_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../application/core/failure/failure_provider.dart';
import '../../../domain/core/failure.dart';
import '../../../utils/failure_utils.dart';
import '../../core/alerts/alert_utils.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/custom_textfield.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
        authenticationNotifierProvider.select((value) => value.isLoading));
    
    // Listen for authentication failures
    ref.listen<Option<Failure>>(
      authenticationNotifierProvider.select((value) => value.responseFailure),
      (_, failureOption) {
        failureOption.fold(
          () {},
          (failure) {
            ref.read(failureNotifierProvider.notifier).handleFailure(failure);
          },
        );
      },
    );
    
    // Handle failures with UI feedback
    ref.listen<Option<Failure>>(
      failureNotifierProvider.select((value) => value.latestFailure),
      (_, failureOption) {
        failureOption.fold(
          () {},
          (failure) {
            AlertUtils.showFailureDialog(
              context: context,
              failure: failure,
              onDismiss: () {
                ref.read(failureNotifierProvider.notifier).dismissFailure(failure);
              },
            );
          },
        );
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: sanFranciscoRegular.copyWith(
            fontSize: 15,
            color: AppColors.textGrey,
          ),
        ),
        CustomTextField(
          hintText: 'Enter your email or username',
          textInputType: TextInputType.emailAddress,
          prefixIcon: const Icon(Icons.email),
          onChanged: (value) {
            ref.read(authenticationNotifierProvider.notifier).emailChanged(value);
          },
        ),
        const SizedBox(height: 20),
        Text(
          'Password',
          style: sanFranciscoRegular.copyWith(
            fontSize: 15,
            color: AppColors.textGrey,
          ),
        ),
        CustomTextField(
          hintText: 'Enter your password',
          obscureText: true,
          textInputType: TextInputType.text,
          isSuffix: true,
          prefixIcon: const Icon(Icons.lock),
          suffixOnPress: () {
            // This would toggle password visibility in a stateful widget
          },
          onChanged: (value) {
            ref.read(authenticationNotifierProvider.notifier).passwordChanged(value);
          },
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              // Forgot password functionality
            },
            child: Text(
              'Forgot Password?',
              style: sanFranciscoMedium.copyWith(
                color: AppColors.primaryColor,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : AppButton(
                  text: 'Login',
                  onPressed: () {
                    ref.read(authenticationNotifierProvider.notifier).login();
                  },
                ),
        ),
        const SizedBox(height: 16),
        Center(
          child: Text(
            'Use test credentials: testaccount123 / pasword123',
            style: sanFranciscoRegular.copyWith(
              fontSize: 12,
              color: AppColors.dashboardTextGrey,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}