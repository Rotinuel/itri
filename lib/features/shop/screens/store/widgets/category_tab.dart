import 'package:flutter/material.dart';
import 'package:itri/common/widgets/brands/brand_show_case.dart';
import 'package:itri/common/widgets/layouts/grid_layout.dart';
import 'package:itri/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';

class ICategoryTab extends StatelessWidget {
  const ICategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
            // --Brands
              const IBrandShowcase(images: [IImages.productImage1, IImages.productImage2, IImages.productImage3],),
              const IBrandShowcase(images: [IImages.productImage3, IImages.productImage2, IImages.productImage1],),
              const SizedBox(height: ISizes.spaceBtwItems),

            // --Products
            ISectionHeading(title: 'You might like', showActionButton: true, onPressed: (){}),
            const SizedBox(height: ISizes.spaceBtwItems),
      
            IGridLayout(itemCount: 4, itemBuilder: (_, index) => const IProductCardVertical()),
          ],
        )
      ),]
    );
  }
}