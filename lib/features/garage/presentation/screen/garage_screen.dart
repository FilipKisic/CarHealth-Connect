import 'package:car_health_connect/core/routes.dart';
import 'package:car_health_connect/core/style/colors.dart';
import 'package:car_health_connect/core/style/text_styles.dart';
import 'package:car_health_connect/features/garage/presentation/widget/vehicle_card.dart';
import 'package:flutter/material.dart';

class GarageScreen extends StatelessWidget {
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [primaryColor, whiteColor],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage('assets/images/bmw_logo.png'),
                  width: 50,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Your vehicles',
                  style: titleLightTextStyle,
                ),
                const SizedBox(height: 40),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, _) => const SizedBox(height: 20),
                    physics: const BouncingScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) => index % 2 == 0
                        ? VehicleCard(
                            model: '540d',
                            mileage: 35758,
                            imagePath: 'assets/images/bmw_5_profile.png',
                            power: 250,
                            onPressed: () => _redirectToHomeScreen(context),
                          )
                        : VehicleCard(
                            model: 'X3 30d',
                            mileage: 12905,
                            imagePath: 'assets/images/bmw_x3_profile.png',
                            power: 195,
                            onPressed: () => _redirectToHomeScreen(context),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _redirectToHomeScreen(final BuildContext context) =>
      Navigator.of(context).pushReplacementNamed(RouteGenerator.mainScreen);
}
