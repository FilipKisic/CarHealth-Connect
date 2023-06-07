import 'package:car_health_connect/core/style/colors.dart';
import 'package:car_health_connect/core/style/constants.dart';
import 'package:car_health_connect/features/home/presentation/style/text_styles.dart';
import 'package:flutter/material.dart';

class DetailsFullCard extends StatelessWidget {
  const DetailsFullCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: appPadding,
      margin: appPadding,
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
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('6000km', style: cardTitleTextStyle),
              Text('540d', style: cardTitleTextStyle),
            ],
          ),
          const Text('Next service', style: cardFullSubtitleTextStyle),
          const SizedBox(height: 5),
          LinearProgressIndicator(
            value: 0.4,
            color: primaryColor,
            backgroundColor: grayColor.withOpacity(0.4),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Last service', style: cardFullDetailsTextStyle),
              Text('29.01.2023.', style: cardFullDetailsTextStyle),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mileage then', style: cardFullDetailsTextStyle),
              Text('28 699 km', style: cardFullDetailsTextStyle),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mechanic', style: cardFullDetailsTextStyle),
              Text('Matija Kamoter', style: cardFullDetailsTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
