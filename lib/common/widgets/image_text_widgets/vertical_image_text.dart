import 'package:flutter/material.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IVerticalImageText extends StatelessWidget {
  const IVerticalImageText({
    super.key, 
    required this.image, 
    required this.title, 
    this.textColor = TColors.white, 
    this.backgroundColor = TColors.white, 
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ISizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ISizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: dark ? TColors.light : TColors.dark),
                ),
            ),
              const SizedBox(height: ISizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: 
            Text(
              'shoes Category', style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.white),maxLines: 1, overflow: TextOverflow.ellipsis,
            ),
            )
          ],
        ),
      ),
    );
  }
}
