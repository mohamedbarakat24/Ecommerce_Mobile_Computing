import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_mm/splash.dart';

import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        // title: "Ecommerce",
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}
