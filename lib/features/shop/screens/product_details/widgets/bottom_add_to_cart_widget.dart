import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/icons/i_circular_icon.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IButttonAddToCart extends StatelessWidget {
  const IButttonAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: ISizes.defaultSpace, vertical: ISizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(ISizes.cardRadiusLg),
          topRight: Radius.circular(ISizes.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const ICircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.white,
                ),
                const SizedBox(width: ISizes.spaceBtwItems),
                Text('2', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(width: ISizes.spaceBtwItems),
                const ICircularIcon(
                  icon: Iconsax.add,
                  backgroundColor: TColors.black,
                  width: 40,
                  height: 40,
                  color: TColors.white,
                  ),
            ],
          ),
          ElevatedButton(
            onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(ISizes.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black),
              ),
              child: const Text('Add to Cart'),
            )
        ],
      ),
    );
  }
}