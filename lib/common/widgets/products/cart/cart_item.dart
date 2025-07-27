import 'package:flutter/material.dart';
import 'package:itri/common/widgets/images/i_rounded_image.dart';
import 'package:itri/common/widgets/texts/i_brand_title_text_with_verified_icon.dart';
import 'package:itri/common/widgets/texts/product_title_text.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ICartItem extends StatelessWidget {
  const ICartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        IRoundedImage(
          imageUrl: IImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(ISizes.sm),
          backgroundColor: IHelperFunctions.isDarkMode(context)
              ? IColors.darkerGrey
              : IColors.light,
        ),
        const SizedBox(width: ISizes.spaceBtwItems),

        //  Title, Price, & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const IBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: IProductTitleText(
                  title: 'Black Sports shoe',
                  maxLines: 1,
                ),
              ),

              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'NG 08',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
