import 'package:autojaquezapp/boundary/presentation/pages/home/home_client/HomeForClientPage.dart';
import 'package:autojaquezapp/boundary/presentation/pages/login/AppSignIn.dart';
import 'package:autojaquezapp/boundary/presentation/pages/login/AppSingUp.dart';
import 'package:autojaquezapp/boundary/presentation/pages/splash/splash_screen_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashPage = '/';
  static const String homePage = '/home';
  static const String loginPage = '/loginPage';
  static const String second = '/second';
  static const String SignUp = '/signUp';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case splashPage:
        return MaterialPageRoute(builder: (_) => SpashScreenPage());
      case homePage:
        return MaterialPageRoute(
            builder: (_) => HomeForClientPage()); // HomePageTab());
      case loginPage:
        return MaterialPageRoute(builder: (_) => AppSignIn());
      case SignUp:
        return MaterialPageRoute(builder: (_) => AppSingUp());
      case second:
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => AppSignIn(),
          );
        }
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
