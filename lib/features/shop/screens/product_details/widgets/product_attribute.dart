import 'package:flutter/material.dart';
import 'package:itri/common/widgets/chips/choice_chip.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/texts/product_price_text.dart';
import 'package:itri/common/widgets/texts/product_title_text.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IProductAttributes extends StatelessWidget {
  const IProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // selected Attribute Pricing & description
        IRoundedContainer(
          padding: const EdgeInsets.all(ISizes.md),
          backgroundColor: dark ? IColors.darkerGrey : IColors.grey,
          child: Column(
            children: [
              // Title, price and stock status
              Row(
                children: [
                  const ISectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: ISizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // Actual price
                        children: [
                          const IProductTitleText(
                            title: 'Price',
                            smallSize: true,
                          ),
                          const SizedBox(width: ISizes.spaceBtwItems),
                          // actual price
                          Text(
                            '₦255',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: ISizes.spaceBtwItems),
                          // sale price
                          const IProductPriceText(price: '200'),
                        ],
                      ),
                      Row(
                        children: [
                          const IProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // Variation description
              const IProductTitleText(
                            title: 'This is the Description of the product and it can go upto max 4 lines',
                            smallSize: true,
                            maxLines: 4,
                          ),

            ],
          ),
        ),
        const SizedBox(height: ISizes.spaceBtwItems),

        // attribute
       Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ISectionHeading(title: 'Colours', showActionButton: false,),
          const SizedBox(height: ISizes.spaceBtwItems / 2),
          Wrap(
            spacing: 8,
            children: [
              IChoiceChip(text: 'Green', selected: false, onSelected: (value) {}),
              IChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
              IChoiceChip(text: 'Yellow', selected: true, onSelected: (value) {}),
              IChoiceChip(text: 'Pink', selected: false, onSelected: (value) {}),
              IChoiceChip(text: 'Red', selected: false, onSelected: (value) {}),
        ]), 
        ],)      
      ],
    );
  }
}
