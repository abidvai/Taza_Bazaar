import 'package:flutter/material.dart';
import 'package:taza_bazar/utils/constants/colors.dart';

class AChipTheme {
  AChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: AColors.grey.withValues(alpha: 0.4),
    labelStyle: TextStyle(color: AColors.black),
    selectedColor: AColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: AColors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: AColors.darkerGrey,
    labelStyle: TextStyle(color: AColors.white),
    selectedColor: AColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: AColors.white,
  );
}
