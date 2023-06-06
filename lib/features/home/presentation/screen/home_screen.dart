import 'package:car_health_connect/core/style/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
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
              const Text('ALL GOOD'),
              const Spacer(),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  separatorBuilder: (context, _) => const SizedBox(width: 20),
                  itemBuilder: (context, _) => Container(
                    color: whiteColor,
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: whiteColor,
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
                child: const Text('Hello'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
