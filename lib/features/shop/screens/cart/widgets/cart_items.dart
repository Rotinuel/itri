import 'package:flutter/material.dart';
import 'package:itri/common/widgets/products/cart/add_remove_button.dart';
import 'package:itri/common/widgets/products/cart/cart_item.dart';
import 'package:itri/common/widgets/texts/product_price_text.dart';
import 'package:itri/utils/constants/sizes.dart';

class ICartItems extends StatelessWidget {
  const ICartItems({
    super.key, 
    this.showAddRemoveButton = true,
    });

  final bool showAddRemoveButton;

 @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, _) =>
          const SizedBox(height: ISizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          const ICartItem(),
          if(showAddRemoveButton) const SizedBox(height: ISizes.spaceBtwItems),

          if(showAddRemoveButton)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Extra Space
                  SizedBox(width: 70),
                  // Add Remove Buttons
                  IProductQuantityWithAddRemoveButtons(),
                ],
              ),
              IProductPriceText(price: '5000'),
            ],
          ),
        ],
      ),
    );
  }
}