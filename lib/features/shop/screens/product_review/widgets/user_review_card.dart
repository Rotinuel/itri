import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/products/ratings/rating_indicator.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  // ignore: use_super_parameters
  const UserReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(IImages.userProfileImage1),
                ),
                const SizedBox(width: ISizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),

        const SizedBox(height: ISizes.spaceBtwItems),

        // review
        Row(
          children: [
            const IRatingBarIndicator(rating: 4),
            const SizedBox(width: ISizes.spaceBtwItems),
            Text('02 Oct, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: ISizes.spaceBtwItems),
        const ReadMoreText(
          'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
        ),
        const SizedBox(width: ISizes.spaceBtwItems),

        // company review
        IRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ISizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Itri Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "25 Nov, 2025",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: ISizes.spaceBtwItems),
                const ReadMoreText(
                  'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: ISizes.spaceBtwSections),
      ],
    );
  }
}
