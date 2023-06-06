import 'package:car_health_connect/core/style/colors.dart';
import 'package:car_health_connect/core/style/text_styles.dart';
import 'package:car_health_connect/core/utils/number_extensions.dart';
import 'package:car_health_connect/features/garage/presentation/utils/custom_icons.dart';
import 'package:car_health_connect/features/garage/presentation/widget/icon_text.dart';
import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String model;
  final int mileage;
  final int power;
  final String imagePath;
  final VoidCallback onPressed;

  const VehicleCard({
    super.key,
    required this.model,
    required this.mileage,
    required this.power,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: primaryColor.withOpacity(0.4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model,
              style: subtitleDarkTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image(
                image: AssetImage(imagePath),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconText(
                  icon: CustomIcons.road,
                  text: '${mileage.formatWithSpaceSeparator()} km',
                ),
                IconText(
                  icon: Icons.settings_rounded,
                  text: '$power kW',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
