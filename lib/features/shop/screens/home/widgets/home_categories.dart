import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:itri/features/shop/screens/sub_catogery/sub_categories.dart';
import 'package:itri/utils/constants/image_strings.dart';

class IHomeCategories extends StatelessWidget {
  const IHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index ){
          return IVerticalImageText(image: IImages.shoeIcon, title: 'Shoes', onTap: () => Get.to(() => const SubCategoriesScreen()));
        },
      )
    );
  }
}
