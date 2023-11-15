import 'package:ai_art_generator/utils/constants/app_images.dart';
import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/utils/routes/routes.dart';
import 'package:ai_art_generator/view_model/auth_view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

AuthViewModel authViewModel=AuthViewModel();
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
     navigateToNextScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.splashIcon,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      authViewModel.checkVerificationStatus(context);
    });
    Navigator.pushNamed(context, ScreenRoutes.bottomNavBar);
  }
}
