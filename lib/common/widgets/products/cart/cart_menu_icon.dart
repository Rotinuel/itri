import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/features/shop/screens/cart/cart.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ICartCounterIcon extends StatelessWidget {
  const ICartCounterIcon({
    super.key,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final bgColor = counterBgColor ?? (dark ? TColors.white : TColors.black);
    final textColor = counterTextColor ?? _getContrastColor(bgColor);
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ?? (dark ? TColors.white : TColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: textColor,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  /// Returns white or black based on background brightness for good contrast
  Color _getContrastColor(Color background) {
    return background.computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }
}
