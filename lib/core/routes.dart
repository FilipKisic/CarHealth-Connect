import 'package:car_health_connect/features/auth/presentation/screen/login_screen.dart';
import 'package:car_health_connect/features/auth/presentation/screen/register_screen.dart';
import 'package:car_health_connect/features/common/presentation/screen/main_screen.dart';
import 'package:car_health_connect/features/garage/presentation/screen/add_vehicle_screen.dart';
import 'package:car_health_connect/features/garage/presentation/screen/garage_screen.dart';
import 'package:car_health_connect/features/home/presentation/screen/home_screen.dart';
import 'package:car_health_connect/features/profile/presentation/screen/profile_screen.dart';
import 'package:car_health_connect/features/settings/presentation/screen/settings_screen.dart';
import 'package:car_health_connect/features/welcome_user/presentation/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const welcomeScreen = '/';
  static const loginScreen = '/login';
  static const registerScreen = '/register';
  static const addVehicleScreen = '/addVehicle';
  static const garageScreen = '/garage';
  static const homeScreen = '/home';
  static const mainScreen = '/main';
  static const profileScreen = '/profile';
  static const settingsScreen = '/settings';

  RouteGenerator._();

  static Route<dynamic> generateRoute(final RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case registerScreen:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case addVehicleScreen:
        return MaterialPageRoute(builder: (_) => AddVehicleScreen());
      case garageScreen:
        return MaterialPageRoute(builder: (_) => const GarageScreen());
      case mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      default:
        throw Exception('Route not found');
    }
  }
}
