/*
* App Name: Flutter Mania - Flutter Project
* Version: v1.0.0+1 copyright 2022 Antonio Candela
* Author: Antonio Candela
* Language: Dart
* Purpose: Commons - Service - utility service as a collection of static methods
* Notes:
* */

// import logic packages - libraries
import "package:flutter/widgets.dart";
import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:typed_data';
import 'package:http/http.dart' as http; // used to connect with API over internet


// import commons
import 'package:flutter_mania/commons/constants/general_constants.dart';

class UtilityService{

  // methods

  // check network availability
  static Future<bool> checkNetwork() async{
    bool checkResult = true;
    try{
      var response = await http.get(
        Uri.parse(checkNetworkSite),
      );
      dev.log("Check Network: true");
    } catch(e) {
      checkResult = false;
      dev.log("Check Network: false");
    }
    return checkResult;
  }

  // base64 images utilities
  static ImageProvider fromBase64ToImage(String base64Data){
    Uint8List dataFromBase64 = base64Decode(base64Data);
    return MemoryImage(dataFromBase64);
  } // fromBase64ToImage

} // UtilityService