import 'package:car_health_connect/core/routes.dart';
import 'package:car_health_connect/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MainApp()));

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarHealth Connect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        fontFamily: 'Helvetica',
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: primaryColor,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
          foregroundColor: whiteColor,
        ),
      ),
      initialRoute: RouteGenerator.welcomeScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
