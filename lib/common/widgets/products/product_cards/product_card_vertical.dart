import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/styles/shadow.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/icons/i_circular_icon.dart';
import 'package:itri/common/widgets/images/i_rounded_image.dart';
import 'package:itri/common/widgets/texts/i_brand_title_text_with_verified_icon.dart';
import 'package:itri/common/widgets/texts/product_price_text.dart';
import 'package:itri/common/widgets/texts/product_title_text.dart';
import 'package:itri/features/shop/screens/product_details/product_details.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IProductCardVertical extends StatelessWidget {
  const IProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);

    
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [IShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ISizes.productImageRadius),
          color: dark ? IColors.darkerGrey : IColors.white,
        ),
        child: Column(
          children: [
            IRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ISizes.sm),
              backgroundColor: dark ? IColors.dark : IColors.light,
              child: Stack(
                children: [
                  const IRoundedImage(
                    imageUrl: IImages.productImage1,
                    applyImageRadius: true,
                  ),

                  // sale tag
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

                  Positioned(
                    top: 0,
                    right: 0,
                    child: ICircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: ISizes.spaceBtwItems / 2),

            const Padding(
              padding: EdgeInsets.only(left: ISizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IProductTitleText(
                      title: 'Green Nike Air',
                      smallSize: true,
                    ),
                    SizedBox(height: ISizes.spaceBtwItems / 2),
                    IBrandTitleWithVerifiedIcon(title: 'Nike'),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: ISizes.sm),
                  child: IProductPriceText(price: '550.00'),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: dark ?  IColors.white : IColors.dark,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(ISizes.cardRadiusMd),
                      bottomRight: Radius.circular(ISizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: ISizes.iconLg * 1.2,
                    height: ISizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: dark ? IColors.dark :  IColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

