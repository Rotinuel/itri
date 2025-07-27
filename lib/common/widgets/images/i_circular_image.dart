import 'package:flutter/material.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ICircularImage extends StatelessWidget {
  const ICircularImage({
    super.key, 
    this.width = 56, 
    this.height = 56, 
    this.overlayColor, 
    this.backgroundColor, 
    required this.image, 
    this.fit = BoxFit.cover, 
    this.padding = ISizes.sm,
    this.isNetworkImage = false, 
    });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        // if image
        color: backgroundColor ?? (dark
            ? IColors.black
            : IColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
