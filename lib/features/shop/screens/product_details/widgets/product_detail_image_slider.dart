import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:itri/common/widgets/icons/i_circular_icon.dart';
import 'package:itri/common/widgets/images/i_rounded_image.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IProductImageSlider extends StatelessWidget {
  const IProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return ICurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            SizedBox(height: 400, child: Padding(
              padding: EdgeInsets.all(ISizes.productImageRadius * 2),
              child: Center(child: Image(image: AssetImage(IImages.productImage1))),
            )),
            // Image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: ISizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, _) => const SizedBox(width: ISizes.spaceBtwItems), 
                  itemBuilder: (_, index) => IRoundedImage(
                    width: 80,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(ISizes.sm),
                    imageUrl: IImages.productImage3,
                    ),
                ),
              ),
            ),
            IAppBar(
              showBackArrow: true,
              actions: [
                ICircularIcon(icon: Iconsax.heart5, color:Colors.red)
              ],
            )
          ])
      ),
    );
  }
}