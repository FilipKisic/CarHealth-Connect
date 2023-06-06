import 'package:car_health_connect/core/style/colors.dart';
import 'package:car_health_connect/core/style/text_styles.dart';
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: grayColor),
        const SizedBox(width: 7),
        Text(text, style: cardDetailsTextStyle),
      ],
    );
  }
}
