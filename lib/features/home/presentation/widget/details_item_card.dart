import 'package:car_health_connect/core/style/colors.dart';
import 'package:car_health_connect/core/style/constants.dart';
import 'package:car_health_connect/features/home/presentation/style/text_styles.dart';
import 'package:flutter/material.dart';

class DetailsItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const DetailsItemCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: appPadding,
      padding: const EdgeInsets.all(12),
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
      width: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: cardInfoSubtitleTextStyle),
              Icon(icon),
            ],
          ),
          const Divider(
            color: grayColor,
            endIndent: 50,
          ),
          Text(subtitle, style: cardInfoDetailsTextStyle),
        ],
      ),
    );
  }
}
