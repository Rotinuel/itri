import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:itri/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:itri/common/widgets/layouts/grid_layout.dart';
import 'package:itri/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/features/shop/screens/all_products/all_products.dart';
import 'package:itri/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:itri/features/shop/screens/home/widgets/home_categories.dart';
import 'package:itri/features/shop/screens/home/widgets/promo_slider.dart';
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
                  SizedBox(height: ISizes.spaceBtwSections),

                  // searchbar
                  ISearchContainer(text: 'Search in Store'),
                  SizedBox(height: ISizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: ISizes.defaultSpace),
                    child: Column(
                      children: [
                        // header
                        ISectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: ISizes.spaceBtwItems),

                        // Categories
                        IHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: ISizes.spaceBtwSections),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(ISizes.defaultSpace),
              child: Column(
                children: [
                  const IPromoSlider(
                    banners: [
                      IImages.promoBanner1,
                      IImages.promoBanner2,
                      IImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: ISizes.spaceBtwSections),

                  ISectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                  
                  const SizedBox(height: ISizes.spaceBtwItems),
                  IGridLayout(itemCount: 2, itemBuilder: (_, index) => const IProductCardVertical()), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

