import 'package:car_health_connect/core/routes.dart';
import 'package:car_health_connect/core/style/colors.dart';
import 'package:car_health_connect/core/style/text_styles.dart';
import 'package:car_health_connect/core/widget/custom_text_field.dart';
import 'package:car_health_connect/core/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginScreen extends HookConsumerWidget {
  final _formGroup = FormGroup({
    'email': FormControl<String>(
      validators: [
        Validators.required,
        Validators.email,
      ],
    ),
    'password': FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(8),
      ],
    ),
  });

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
          child: ReactiveForm(
            formGroup: _formGroup,
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/bmw_logo.png'),
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 30),
                const Text('Welcome back!', style: titleLightTextStyle),
                const SizedBox(height: 40),
                CustomTextField(
                  controller: emailController,
                  formControlName: 'email',
                  labelText: 'E-mail',
                  validationMessages: {
                    'required': (_) => 'Email is required',
                    'email': (_) => 'Valid email address is required'
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: passwordController,
                  formControlName: 'password',
                  labelText: 'Password',
                  validationMessages: {
                    'required': (_) => 'Password is required',
                    'minLength': (_) => 'Minimum length is 8 characters'
                  },
                ),
                const SizedBox(height: 60),
                PrimaryButton.light(
                  onPressed: () => _redirectToAddVehicle(context),
                  child: const Text('LOGIN'),
                ),
                const SizedBox(height: 60),
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: whiteColor),
                ),
                TextButton(
                  onPressed: () => _redirectToRegisterScreen(context),
                  child: const Text(
                    'Register',
                    style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _redirectToRegisterScreen(final BuildContext context) =>
      Navigator.of(context).pushNamed(RouteGenerator.registerScreen);

  void _redirectToAddVehicle(final BuildContext context) =>
      Navigator.of(context).pushNamed(RouteGenerator.addVehicleScreen);
}
