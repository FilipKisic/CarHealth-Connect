import 'package:car_health_connect/core/routes.dart';
import 'package:car_health_connect/core/style/text_styles.dart';
import 'package:car_health_connect/core/widget/primary_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/welcome_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Image(
                  image: AssetImage('assets/images/bmw_logo.png'),
                  width: 150,
                  height: 150,
                ),
              ),
              const Spacer(),
              const Text(
                'Welcome!',
                style: titleTextStyle,
              ),
              const SizedBox(height: 5),
              const Text(
                'Driving pleasure is yours, taking care is ours.',
                style: subtitleTextStyle,
              ),
              const SizedBox(height: 25),
              PrimaryButton.dark(
                onPressed: () => _redirectTo(context, RouteGenerator.loginScreen),
                child: const Text('LOGIN'),
              ),
              const SizedBox(height: 15),
              PrimaryButton.light(
                onPressed: () => _redirectTo(context, RouteGenerator.registerScreen),
                child: const Text('REGISTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _redirectTo(final BuildContext context, final String routeName) =>
      Navigator.of(context).pushNamed(routeName);
}
