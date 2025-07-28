import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/layouts/grid_layout.dart';
import 'package:itri/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:itri/utils/constants/sizes.dart';

class ISortableProducts extends StatelessWidget {
  const ISortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefix: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity'].map((option) => DropdownMenuItem(
              value: option,
              child: Text(option))).toList(),
          ),
          const SizedBox(height: ISizes.spaceBtwSections),
    
          // products
          IGridLayout(itemCount: 8, itemBuilder: (_, index) => const IProductCardVertical())
      ],
    );
  }
}