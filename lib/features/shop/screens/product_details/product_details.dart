import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:itri/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:itri/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:itri/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:itri/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:itri/features/shop/screens/product_review/product_reviews.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: IButttonAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 - Product Image Slider
            IProductImageSlider(),

            // 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                right: ISizes.defaultSpace,
                left: ISizes.defaultSpace,
                bottom: ISizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating
                  IRatingAndShare(),

                  // Price, Title, stock & brand
                  IProductMetaData(),

                  // Attributes
                  IProductAttributes(),
                  const SizedBox(height: ISizes.spaceBtwSections),

                  // checkOut Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text('checkout')),
                  ),
                  const SizedBox(height: ISizes.spaceBtwSections),


                  // Description
                  const ISectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: ISizes.spaceBtwItems),
                  const ReadMoreText(
                    'just some random wooooooooooooooooords that i have no knowlegde, i am so tired, writing code at about 2:14am, there are more things that can be added but i am just practicing and nothing else but it could be bigger',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  
                  // Reviews
                  const Divider(),
                  const SizedBox(height: ISizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ISectionHeading(title: 'Review (199)', showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: ISizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

