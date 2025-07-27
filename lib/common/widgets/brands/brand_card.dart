import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/images/i_circular_image.dart';
import 'package:itri/common/widgets/texts/i_brand_title_text_with_verified_icon.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/enums.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IBrandCard extends StatelessWidget {
  const IBrandCard({
    super.key, 
    required bool showBorder,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: IRoundedContainer(
        padding: const EdgeInsets.all(ISizes.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: ICircularImage(
                isNetworkImage: false,
                image: IImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                    IHelperFunctions.isDarkMode(context)
                    ? IColors.white
                    : IColors.black,
              ),
            ),
    
            const SizedBox(width: ISizes.spaceBtwItems / 2),
    
            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
