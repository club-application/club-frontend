import 'package:club_frontend/common/routes/routes_name.dart';
import 'package:club_frontend/features/authentication/otp_screen.dart';
import 'package:flutter/material.dart';
import '../../features/authentication/signup_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return _buildPageRoute(const Placeholder());
      case RoutesName.login:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const OtpScreen(),
        );
      default:
        return _buildPageRoute(
          const Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          ),
        );
    }
  }

  static MaterialPageRoute<dynamic> _buildPageRoute(Widget page) {
    return MaterialPageRoute<dynamic>(builder: (ctx) => page);
  }
}
