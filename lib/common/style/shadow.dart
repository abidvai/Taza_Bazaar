
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class AShadow {
  AShadow._();

  static List<BoxShadow> searchBarShadow = [
    BoxShadow(
        color: Colors.black.withValues(alpha: 0.1),
        spreadRadius: 2.0,
        blurRadius: 4.0
    )
  ];

  static List<BoxShadow> verticalProductShadow = [
    BoxShadow(
        color: AColors.darkerGrey.withValues(alpha: 0.1),
        blurRadius: 50,
        spreadRadius: 7,
        offset: Offset(0,2)
    )
  ];
}