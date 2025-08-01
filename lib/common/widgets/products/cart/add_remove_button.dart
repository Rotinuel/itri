import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/icons/i_circular_icon.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IProductQuantityWithAddRemoveButtons extends StatelessWidget {
  const IProductQuantityWithAddRemoveButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ICircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: ISizes.md,
          color: IHelperFunctions.isDarkMode(context)
              ? IColors.white
              : IColors.black,
          backgroundColor: IHelperFunctions.isDarkMode(context)
              ? IColors.darkerGrey
              : IColors.light,
        ),
        const SizedBox(width: ISizes.spaceBtwItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: ISizes.spaceBtwItems),
        const ICircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: ISizes.md,
          color: IColors.white,
          backgroundColor: IColors.primary,
        ),
      ],
    );
  }
}
