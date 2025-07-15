import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/utils/constants/colors.dart';

class ICartCounterIcon extends StatelessWidget {
  const ICartCounterIcon({
    super.key, 
    this.iconColor = TColors.black, 
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(onPressed: (){}, icon: Icon(Iconsax.shopping_bag, color: iconColor)),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: TColors.black.withAlpha(113),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8))),
        )
    
      )
    ],);
  }
}
