/*
* App Name: Flutter Mania - Flutter Project
* Version: v1.0.0+1 copyright 2022 Antonio Candela
* Author: Antonio Candela
* Language: Dart
* Purpose: Main - define App Bootstrap and main screen
* Notes:
* */


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:developer' as dev;

// import commons
import 'package:flutter_mania/commons/constants/general_constants.dart';

// import routes
import 'app_routes.dart';

// import screens
import 'package:flutter_mania/app-functions/splashview/screens/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); // <- used to make sure to have a WidgetsBinding instance, which is required to use platform channels to call the native code.
  runApp(const MyApp());
}

/*
* Purpose: define a point a primary point if firebase is on otherwise return direct bootstrap
* */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return const Bootstrap();
  }
}


class Bootstrap extends StatelessWidget {
  const Bootstrap({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Mania - Animated Splash Screen',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.blue,

        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: GeneralColors.appBackground.rgb,
        canvasColor: GeneralColors.appBackgroundSecondary.rgb,
        primaryColor: GeneralColors.txtPrimaryColor.rgb,


        // AppBar Theme
        appBarTheme: AppBarTheme(
            toolbarTextStyle: TextStyle(
              color: GeneralColors.txtPrimaryColor.rgb,
              fontSize: 23.0,
            ),
            backgroundColor: GeneralColors.appBackground.rgb,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            iconTheme: IconThemeData(color: GeneralColors.iconColor.rgb)),

        // Font Theme
        fontFamily: 'OpenSans',
        textTheme: const TextTheme(
          headline4: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)
        )
      ),
      // routes defined as Map(routename,Function)
      routes: appRoutes,
      initialRoute: SplashScreen.id,
    );
  }
}


