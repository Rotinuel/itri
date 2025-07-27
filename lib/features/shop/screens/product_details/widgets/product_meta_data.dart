import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/images/i_circular_image.dart';
import 'package:itri/common/widgets/texts/i_brand_title_text_with_verified_icon.dart';
import 'package:itri/common/widgets/texts/product_price_text.dart';
import 'package:itri/common/widgets/texts/product_title_text.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/enums.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IProductMetaData extends StatelessWidget {
  const IProductMetaData({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = IHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children : [
        //  price & sales Price
        Row(
          children: [
          // Sale Tag
          IRoundedContainer(
            radius: ISizes.sm,
            backgroundColor: IColors.secondary.withAlpha(204),
            padding: const EdgeInsets.symmetric(horizontal: ISizes.sm, vertical: ISizes.xs),
            child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: IColors.black)),
          ),
          const SizedBox(width: ISizes.spaceBtwItems),

          // Price
          Text('₦255', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
          const SizedBox(width: ISizes.spaceBtwItems),
          IProductPriceText(price: '175', isLarge: true),
          ],
        ),

        const SizedBox(height: ISizes.spaceBtwItems / 1.5),

        // Title
        const IProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: ISizes.spaceBtwItems / 1.5),

        //Stock Status
        Row(
          children: [
            const IProductTitleText(title: 'Status'),
            const SizedBox(width: ISizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: ISizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            ICircularImage(
              image: IImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? IColors.white : IColors.black,
              ),
            IBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        ),
      ]
    );
  }
}