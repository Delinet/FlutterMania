/*
* App Name: Flutter Mania - Flutter Project
* Version: v1.0.0+1 copyright 2021 Antonio Candela
* Author: Antonio Candela
* Language: Dart
* Purpose: Shared App ( using static class ) Device Size Configuration and utility function to return proportional dimension
* started with a device base size w812 x h375
* Notes: la classe - utilizzata per le sue componenti statiche è inizializzata nella prima screen visualizzata dopo il build e rendering. Screen: signup_screen
* */

import 'package:flutter/material.dart';

// logic packages - libraries
import 'dart:developer' as dev;

class DeviceSizeConfiguration {

  // properties
  // device model: iOS - iPhone SE 2nd Generation
  static const double _baseHeight = 667.0;
  static const double _baseWidth = 375.0;

  static MediaQueryData? _mediaQuery;

  static double? deviceScreenWidth; // valorizzata, post init, con la dimensione Width del device dove è in run l'App
  static double? deviceScreenHeight; // valorizzata, post init, con la dimensione Height del device dove è in run l'App

  // valori utilizzati per determinare la corretta modalità di rendering dello screen o parte di esso.
  static bool? isInWidth; // valorizzato post init per definire se la dimensione width del device utilizzato è nel range del device model
  static bool? isInHeight; // valorizzato post init per definire se la dimensione width del device utilizzato è nel range del device model

  void init(BuildContext context){
    _mediaQuery = MediaQuery.of(context);
    deviceScreenHeight = _mediaQuery!.size.height;
    deviceScreenWidth = _mediaQuery!.size.width;

    isInWidth = (deviceScreenWidth! >= _baseWidth);
    isInHeight = (deviceScreenHeight! >= _baseHeight);

    dev.log("********************************");
    dev.log("DeviceWidth: $deviceScreenWidth");
    dev.log("DeviceHeight: $deviceScreenHeight");
    dev.log("********************************");

    dev.log("********************************");
    dev.log("isInWidth: $isInWidth");
    dev.log("isInHeight: $isInHeight");
    dev.log("********************************");
  }

  /*
  * Ritorna il valore della dimensione Height riproporzionata al Device Screen Size
  * */
  static double getHeightProportioned({required double height}) => (height * deviceScreenHeight!) / _baseHeight;

  /*
  * Ritorna il valore della dimensione Width riproporzionata al Device Screen Size
  * */
  static double getWidthProportioned({required double width}) => (width * deviceScreenWidth!) / _baseWidth;


} // DeviceSizeConfiguration