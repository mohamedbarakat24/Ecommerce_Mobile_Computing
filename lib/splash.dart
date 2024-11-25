import 'package:ecommerce_mm/View/onboarding/onboarding_view.dart';
import 'package:ecommerce_mm/utils/constants/colors.dart';
import 'package:ecommerce_mm/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = MyHelperFunctions.isDarkMode(context);

    return AnimatedSplashScreen(
      duration: 2500,
      splash: Center(
        child: Lottie.asset(
          "assets/images/SplashImage.gif",
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      nextScreen: const OnboardingView(),
      splashIconSize: double.infinity,
      backgroundColor: isDarkMode ? MyColors.MyDarkTheme : Colors.white,
    );
  }
}
