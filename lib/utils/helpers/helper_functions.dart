import 'package:flutter/material.dart';

class AHelperFunctions {
  AHelperFunctions._();

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}