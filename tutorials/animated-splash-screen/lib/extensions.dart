/*
* App Name: Flutter Mania - Flutter Project
* Version: v.1.0.0 copyright 2021 Antonio Candela
* Author: Antonio Candela
* Language: Dart
* Purpose: Extensions - extensions library
* Notes:
* */

extension StringHandling on String{

  String truncWithLimit(int limit){
    if (length > limit){
      return "${substring(0,limit-3)}...";
    } else {
      return this;
    }
  } // truncWithLimit

  String cleanHtmlCode(){
    //clean
    var modifiedStr = replaceAll("&#8211;", "-");
    modifiedStr = modifiedStr.replaceAll("&#8217;", "'");
    modifiedStr = modifiedStr.replaceAll("&#8220;", '"');
    modifiedStr = modifiedStr.replaceAll("&#8221;", '"');
    return modifiedStr;
  }

  String cleanMinus(){
    //clean
    var modifiedStr = replaceAll("-", " ");
    return modifiedStr;
  }

} // StringHandling