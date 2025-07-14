import 'package:flutter/material.dart';
import 'package:itri/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(26),
    blurRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(26),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
    );
}