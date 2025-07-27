import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/icons/i_circular_icon.dart';
import 'package:itri/common/widgets/images/i_rounded_image.dart';
import 'package:itri/common/widgets/texts/i_brand_title_text.dart';
import 'package:itri/common/widgets/texts/product_price_text.dart';
import 'package:itri/common/widgets/texts/product_title_text.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IProductCardHorizontal extends StatelessWidget {
  const IProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ISizes.productImageRadius),
        color: dark ? IColors.darkerGrey : IColors.softGrey,
      ),

      child: Row(
        children: [
          // Thumbnail
          IRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(ISizes.sm),
            backgroundColor: dark ? IColors.dark : IColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: IRoundedImage(
                    imageUrl: IImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),

                Positioned(
                  top: 12,
                  child: IRoundedContainer(
                    radius: ISizes.sm,
                    backgroundColor: IColors.secondary.withAlpha(204),
                    padding: const EdgeInsets.symmetric(
                      horizontal: ISizes.sm,
                      vertical: ISizes.xs,
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: IColors.black),
                    ),
                  ),
                ),

                const Positioned(
                  top: 0,
                  right: 0,
                  child: ICircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          // details
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: ISizes.sm, left: ISizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IProductTitleText(
                        title: 'Green Nike Air',
                        smallSize: true,
                      ),
                      SizedBox(height: ISizes.spaceBtwItems / 2),
                      IBrandTitleText(title: 'Nike'),
                    ],
                  ),

                  const Spacer(),
                  // price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: IProductPriceText(price: '225.00')),

                      // add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: IColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ISizes.cardRadiusMd),
                            bottomRight: Radius.circular(ISizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: ISizes.iconLg * 1.2,
                          height: ISizes.iconLg * 1.2,
                          child: Center( 
                            child: 
                            Icon(Iconsax.add,
                            color: IColors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
