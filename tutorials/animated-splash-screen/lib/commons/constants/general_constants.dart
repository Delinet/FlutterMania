/*
* App Name: Flutter Mania - Flutter Project
* Version: v1.0.0+1 copyright 2022 Antonio Candela
* Author: Antonio Candela
* Language: Dart
* Purpose: Constants - the set of the constants value used in the App
* Notes:
* */

import 'package:flutter/material.dart';

// General Configuration values

const String checkNetworkSite = "https://www.google.com"; // to check if network connection is ok

/* SQLLite configuration */
enum SQLLite { dbName, table }

extension SQLLiteValues on SQLLite {
  String get value {
    switch (this) {
      case SQLLite.dbName:
        return "dbName";
      case SQLLite.table:
        return "dbTableName";
      default:
        return "default.db";
    }
  }
}

const sharedEngagementTxtMessage = "Fluuter Mania - Default Shared Engagement Txt Message";

// End General Configuration values

// General Color
enum GeneralColors {
  appBackground,
  appBackgroundSecondary,
  txtPrimaryColor,
  txtSecondaryColor,
  txtThirdColor,
  iconColor,
  buttonPrimaryColor,
  buttonSecondaryColor,
  txtButtonColor
}

extension GeneralColorValues on GeneralColors {
  Color get rgb {
    switch (this) {
      case GeneralColors.appBackground:
        return const Color(0xFF141E37);
      case GeneralColors.appBackgroundSecondary:
        return const Color(0xFF3C7E99);
      case GeneralColors.txtPrimaryColor:
        return const Color(0xFFFFFFFF);
      case GeneralColors.txtSecondaryColor:
        return const Color(0xFF3C7E99);
      case GeneralColors.txtThirdColor:
        return const Color(0xFF141E37);
      case GeneralColors.buttonPrimaryColor:
        return const Color(0xFF141E37);
      case GeneralColors.buttonSecondaryColor:
        return const Color(0xFF1c3c55);
      case GeneralColors.txtButtonColor:
        return const Color(0xFFFFFFFF);
      case GeneralColors.iconColor:
        return const Color(0xFFFFFFFF);
      default:
        return const Color(0xFFFFFFFF);
    }
  }
} // GeneralColorValues - extension GeneralColor

// General Dimension
enum GeneralDimensions { buttonWidth, buttonFlatWidth }

extension GeneralDimensionsValues on GeneralDimensions {
  double get value {
    switch (this) {
      case GeneralDimensions.buttonWidth:
        return 300.0;
      case GeneralDimensions.buttonFlatWidth:
        return 130.0;
      default:
        return 100.0;
    }
  }
} // GeneralDimensionsValues - extension GeneralDimensions
