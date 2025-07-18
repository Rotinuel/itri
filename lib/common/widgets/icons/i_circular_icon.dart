import 'package:flutter/material.dart';
import 'package:itri/utils/constants/sizes.dart';

import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ICircularIcon extends StatelessWidget {
  const ICircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = ISizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ?  TColors.black.withAlpha(230): TColors.white.withAlpha(230)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}