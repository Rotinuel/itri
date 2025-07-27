import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/device/device_utility.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ISearchContainer extends StatelessWidget {
  const ISearchContainer({
    super.key, 
    required this.text, 
    this.icon = Iconsax.search_normal, 
    this.showBackground = true, 
    this.showBorder = true, 
    this.onTap, 
    this.padding = const EdgeInsets.symmetric(horizontal: ISizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(ISizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark ? IColors.dark : IColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(ISizes.cardRadiusLg),
            border: showBorder ? Border.all(color: IColors.grey) : null
          ),
          child: Row(
            children: [
              const Icon(Iconsax.search_normal, color: IColors.darkerGrey),
              const SizedBox(width: ISizes.spaceBtwItems),
              Text('Search in Store', style: Theme.of(context).textTheme.bodySmall),
            ]
          ),
        ),
      ),
    );
  }
}