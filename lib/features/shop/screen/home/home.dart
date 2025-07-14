import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:itri/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:itri/common/widgets/layouts/grid_layout.dart';
import 'package:itri/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/features/shop/screen/home/widgets/home_appbar.dart';
import 'package:itri/features/shop/screen/home/widgets/home_categories.dart';
import 'package:itri/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            IPrimaryHeaderContainer(
              child: Column(
                children: [
                  // app bar
                  IHomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // searchbar
                  ISearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // header
                        ISectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        // Categories
                        IHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const IPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ISectionHeading(title: 'Popular Products', onPressed: (){}),
                  
                  const SizedBox(height: TSizes.spaceBtwItems),
                  IGridLayout(itemCount: 8, itemBuilder: (_, index) => const IProductCardVertical()), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

