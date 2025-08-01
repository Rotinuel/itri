import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: IColors.grey.withAlpha(102),
    labelStyle: const TextStyle(color: IColors.black),
    selectedColor: IColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: IColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: IColors.darkerGrey,
    labelStyle: TextStyle(color: IColors.white),
    selectedColor: IColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: IColors.white,
  );
}
