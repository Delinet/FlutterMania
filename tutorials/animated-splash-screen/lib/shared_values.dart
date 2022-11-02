/*
* App Name: Flutter Mania - Flutter Project
* Version: v1.0.0+1 copyright 2022 Antonio Candela
* Author: Antonio Candela
* Language: Dart
* Purpose: Shared - SharedValues used to share values across the app
* Notes:
* */

class SharedValues{
  // properties
  static String _fcmBackgroundData = ""; //used with FCM
  static String _fcmMessageId = ""; //used with FCM

  static setFCMBackgroundValue(String value){
    SharedValues._fcmBackgroundData = value;
  }
  static String getFCMBackgroundData() {
      return _fcmBackgroundData;
  }

  static setFCMMessageId(String value) => SharedValues._fcmMessageId = value;
  static getFCMMessageId() => SharedValues._fcmMessageId;

}