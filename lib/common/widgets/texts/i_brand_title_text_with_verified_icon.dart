import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/texts/i_brand_title_text.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/enums.dart';
import 'package:itri/utils/constants/sizes.dart';

class IBrandTitleWithVerifiedIcon extends StatelessWidget {
  const IBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1, 
    required this.title, 
    this.iconColor = IColors.primary, 
    this.textAlign = TextAlign.center, 
    this.brandTextSize = TextSizes.small,

  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: IBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: ISizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: ISizes.iconXs,
        ),
      ],
    );
  }
}
