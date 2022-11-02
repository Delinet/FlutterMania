/*
* App Name: Flutter Mania - Flutter Project
* Version: v1.0.0+1 copyright 2022 Antonio Candela
* Author: Antonio Candela
* Language: Dart
* Purpose: Define App Map Routes
* Notes:
* */

import 'package:flutter/widgets.dart'; // imported to use WidgetBuilder

// import screen AKA routes by screen id ( alias static properties of screen class )
import 'package:flutter_mania/app-functions/splashview/screens/splash_screen.dart';
import 'package:flutter_mania/app-functions/home/screens/home_screen.dart';


// to use WidgetBuilder Class as returned type to define the Map
/* Define a Map <String, WidgetBuilder> - (context) => WidgetClassName() return a WidgetBuilder */
final Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.id : (context) => const SplashScreen(),
  HomeScreen.id : (context) => const HomeScreen(title: "Home"),
};