import 'package:flutter/material.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IRoundedImage extends StatelessWidget {
  const IRoundedImage({
    super.key, 
    this.width, 
    this.height, 
    required this.imageUrl, 
    this.applyImageRadius = true, 
    this.border, 
    this.backgroundColor, 
    this.fit = BoxFit.contain, 
    this.padding, 
    this.isNetworkImage = false, 
    this.onPressed, 
    this.borderRadius = ISizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;


  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(border: border, color: backgroundColor ?? (dark ? IColors.black : IColors.light), borderRadius:BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          child: Image(fit: fit, image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider),
        )
      ),
   );
  }
}