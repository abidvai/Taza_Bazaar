import 'package:flutter/material.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/theme/bottom_sheet_theme.dart';
import 'package:taza_bazar/utils/theme/checkbox_theme.dart';
import 'package:taza_bazar/utils/theme/chip_theme.dart';
import 'package:taza_bazar/utils/theme/elevated_button_theme.dart';
import 'package:taza_bazar/utils/theme/text_field_theme.dart';
import 'package:taza_bazar/utils/theme/widgets_theme/text_theme.dart';

import 'appbar_theme.dart';

class AAppTheme {
  AAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: '',
    brightness: Brightness.light,
    primaryColor: AColors.primary,
    disabledColor: Colors.grey,
    textTheme: ATextTheme.lightTextTheme,
    scaffoldBackgroundColor: AColors.white,
    chipTheme: AChipTheme.lightChipTheme,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: ACheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: '',
    brightness: Brightness.dark,
    primaryColor: AColors.primary,
    disabledColor: Colors.grey,
    textTheme: ATextTheme.darkTextTheme,
    scaffoldBackgroundColor: AColors.black,
    chipTheme: AChipTheme.darkChipTheme,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: ACheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.darkInputDecorationTheme,
  );
}
