import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/brands/brand_card.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IBrandShowcase extends StatelessWidget {
  const IBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return IRoundedContainer(
      showBorder: true,
      borderColor: IColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(ISizes.md),
      margin: const EdgeInsets.only(bottom: ISizes.spaceBtwItems),
      child: Column(
        children: [
        const IBrandCard(showBorder: false),
        const SizedBox(height: ISizes.spaceBtwItems),
        Row(
          children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }



  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: IRoundedContainer(
        height: 100,
        backgroundColor: IHelperFunctions.isDarkMode(context) ? IColors.darkerGrey : IColors.light,
        margin: const EdgeInsets.only(right: ISizes.sm),
        padding: const EdgeInsets.all(ISizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image))
      ),
    );
  }
}