import 'package:ai_art_generator/view/Authscreen/login_screen.dart';
import 'package:ai_art_generator/view/Authscreen/signup_screen.dart';
import 'package:ai_art_generator/view/Screen/spalash_screen/spalash.dart';
import 'package:flutter/material.dart';

import '../../view/Authscreen/otp_screen.dart';
import '../../view/Authscreen/reset_password_screen.dart';
import '../../view/Authscreen/set_new_password_screen.dart';
import '../../view/Screen/Home_screen/art_style_screen/art_style_screen.dart';
import '../../view/Screen/bottom_navigation_screen/bottom_navigation_bar.dart';
import '../../view/Screen/generated_art_screen/generated_art_screen.dart';

class ScreenRoutes {
  static const String splash = "splash";
  static const String onbroding = "OnBording";
  static const String logIn = "login";
  static const String signUpScreen = "signUpScreen";
  static const String resetPassword = "resetPassword";
  static const String setNewPassword = "setNewPassword";
  static const String otpScreen = " otpScreen";
  static const String bottomNavBar = "botomNaveBar";
  static const String artStyleScreen = "artStyleScreen";
  static const String generatedArtScreen = "generatedArtScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      /// WalkThrough FLOW
      /// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      case splash:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case logIn:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        );
      case signUpScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignUpScreen(),
        );
      case resetPassword:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ResetPassword(),
        );
      case setNewPassword:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SetNewPassword(),
        );
      case bottomNavBar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const CutomBottomNavigationBar(),
        );
      case otpScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OtpScreen(),
        );
      case artStyleScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ArtStyleScreen(),
        );
      case generatedArtScreen:
        final results = settings.arguments as Map;
        String id = results['id'];
        return MaterialPageRoute(
          builder: (BuildContext context) => GeneratedArtScreen(
            id: id,
          ),
        );

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
