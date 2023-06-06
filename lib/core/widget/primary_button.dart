import 'package:car_health_connect/core/style/colors.dart';
import 'package:car_health_connect/core/style/text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final TextStyle buttonTextStyle;

  const PrimaryButton({
    super.key,
    required this.child,
    required this.onPressed,
    required this.backgroundColor,
    required this.buttonTextStyle,
  });

  const PrimaryButton.light({
    super.key,
    required this.child,
    required this.onPressed,
  })  : backgroundColor = whiteColor,
        buttonTextStyle = buttonLightTextStyle;

  const PrimaryButton.dark({
    super.key,
    required this.child,
    required this.onPressed,
  })  : backgroundColor = primaryColor,
        buttonTextStyle = buttonDarkTextStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          textStyle: buttonTextStyle,
          foregroundColor: buttonTextStyle.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: child,
        ),
      ),
    );
  }
}
