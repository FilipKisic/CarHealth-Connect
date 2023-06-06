import 'package:car_health_connect/core/style/colors.dart';
import 'package:car_health_connect/core/style/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String formControlName;
  final Map<String, ValidationMessageFunction> validationMessages;
  final String labelText;
  final TextStyle textStyle;
  final int minLines;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.formControlName,
    required this.validationMessages,
    this.labelText = '',
    this.textStyle = formTextStyle,
    this.minLines = 1,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      controller: controller,
      formControlName: formControlName,
      validationMessages: validationMessages,
      style: textStyle,
      minLines: minLines,
      maxLines: minLines,
      obscureText: isPassword,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: whiteColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: whiteColor, width: 2),
        ),
        labelStyle: const TextStyle(color: Colors.white54),
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: whiteColor,
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
        fillColor: backgroundColor,
        errorStyle: errorTextStyle,
      ),
    );
  }
}
