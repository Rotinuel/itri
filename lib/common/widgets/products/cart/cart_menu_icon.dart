import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ICartCounterIcon extends StatelessWidget {
  const ICartCounterIcon({
    super.key, 
    this.iconColor, 
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(children: [
      IconButton(onPressed: (){}, icon: Icon(Iconsax.shopping_bag, color: iconColor ?? (dark ? TColors.white : TColors.dark),
      ),),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: dark ? TColors.white.withAlpha(113) : TColors.dark.withAlpha(113),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: dark ? TColors.dark : TColors.white, fontSizeFactor: 0.8))),
        )
    
      )
    ],);
  }
}
