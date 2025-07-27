import 'package:flutter/material.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/images/i_rounded_image.dart';
import 'package:itri/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';


class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IAppBar(title: Text('Module'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
              // banner
              IRoundedImage(imageUrl: IImages.promoBanner1, width: double.infinity, applyImageRadius: true),
              SizedBox(height: ISizes.spaceBtwSections),

              // subcategories 
              Column(
                children: [
                  // Heading
                  ISectionHeading(title: 'Modules Variation', onPressed: (){}),
                  const SizedBox(height: ISizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4, 
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (conext, index) => SizedBox(width: ISizes.spaceBtwItems),
                      itemBuilder: (context, index) => const IProductCardHorizontal(),
                    ),
                  ),
                ],
              )
            ],
          ),
          ),
      ),
    );
  }
}