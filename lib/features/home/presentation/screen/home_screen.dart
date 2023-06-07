import 'package:car_health_connect/core/style/colors.dart';
import 'package:car_health_connect/core/style/constants.dart';
import 'package:car_health_connect/core/style/text_styles.dart';
import 'package:car_health_connect/core/style/custom_icons.dart';
import 'package:car_health_connect/features/home/presentation/widget/details_full_card.dart';
import 'package:car_health_connect/features/home/presentation/widget/details_item_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [primaryColor, whiteColor],
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: appPadding,
              child: Image(
                image: AssetImage('assets/images/bmw_logo.png'),
                width: 50,
              ),
            ),
            const Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Padding(
                    padding: appHorizontalPadding,
                    child: Text('ALL\nGOOD', style: homeTitleTextStyle),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 120,
                    child: Image(
                      image: AssetImage('assets/images/bmw_5.png'),
                      width: 350,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, _) => const DetailsItemCard(
                  title: 'Total\nmileage',
                  icon: CustomIcons.road,
                  subtitle: '35 758 km',
                ),
              ),
            ),
            const DetailsFullCard(),
          ],
        ),
      ),
    );
  }
}
