import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/utils/constants/sizes.dart';

class IProfileMenu extends StatelessWidget {
  const IProfileMenu({
    super.key,
    required this.onPressed, 
    required this.title, 
    required this.value,
    this.icon = Iconsax.arrow_right_34,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ISizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(flex: 3, child: Text(title, style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis)),
            Expanded(flex: 5, child: Text(value, style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis)),
            Expanded(child: Icon(icon, size:18)),
          ],
        ),
      ),
    );
  }
}