import 'package:flutter/material.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';

class IRoundedContainer extends StatelessWidget {
  const IRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = ISizes.cardRadiusLg,
    this.backgroundColor = IColors.white,
    this.borderColor = IColors.borderPrimary, 
    });


    final double? width;
    final double? height;
    final double? radius;
    final Widget? child;
    final bool showBorder;
    final Color borderColor;
    final Color backgroundColor;
    final EdgeInsetsGeometry? padding;
    final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius!),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
} 