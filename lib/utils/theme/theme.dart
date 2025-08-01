import 'package:flutter/material.dart';
import 'package:itri/utils/theme/custom_themes/appbar_theme.dart';
import 'package:itri/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:itri/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:itri/utils/theme/custom_themes/chip_theme.dart';
import 'package:itri/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:itri/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:itri/utils/theme/custom_themes/text_field_theme.dart';
import 'package:itri/utils/theme/custom_themes/text_theme.dart';

import '../constants/colors.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: IColors.grey,
    brightness: Brightness.light,
    primaryColor: IColors.primary,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: IColors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: IColors.grey,
    brightness: Brightness.dark,
    primaryColor: IColors.primary,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: IColors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
