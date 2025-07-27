import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:itri/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:itri/common/widgets/images/i_rounded_image.dart';
import 'package:itri/features/shop/controllers/home_controller.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';

class IPromoSlider extends StatelessWidget {
  const IPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController()); 

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items: banners.map((url) => IRoundedImage(imageUrl: url)).toList()
        ),
        const SizedBox(height: ISizes.spaceBtwItems),
        
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                ICircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? IColors.primary : IColors.grey,
                )
              ],
            )
          ),
        ),
      ],
    );
  }
}
