import 'package:flutter/material.dart';
import 'package:itri/utils/constants/sizes.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ISizes.appBarHeight,
            left: ISizes.defaultSpace,
            bottom: ISizes.defaultSpace,
            right: ISizes.defaultSpace,
  );
}