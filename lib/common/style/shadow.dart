
import 'package:flutter/material.dart';

class AShadow {
  AShadow._();

  static List<BoxShadow> searchBarShadow = [
    BoxShadow(
        color: Colors.black.withValues(alpha: 0.1),
        spreadRadius: 2.0,
        blurRadius: 4.0
    )
  ];
}