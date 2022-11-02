/*
* App Name: Flutter Mania - Flutter Project
* Version: v1.0.0+1 copyright 2022 Antonio Candela
* Author: Antonio Candela
* Language: Dart
* Purpose: App Function - SplashView - Screen: SplahScreen
* Notes:
* */

import 'package:flutter/material.dart';

// logic packages - libraries
import 'dart:developer' as dev;
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

// import device layout configuration
import 'package:flutter_mania/device_size_configuration.dart';

// import commons
import 'package:flutter_mania/commons/constants/general_constants.dart';

// import models

// import screens
import 'package:flutter_mania/app-functions/home/screens/home_screen.dart';

// import components


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  // id screen
  static String id = "splash_screen";

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('assets/json/splashscreenanimation.json'),
        splashIconSize: 250.0,
        backgroundColor: GeneralColors.appBackgroundSecondary.rgb,
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        duration: 3500,
        nextScreen: const HomeScreen(title: "HomeScreen")
    );
  }
}
