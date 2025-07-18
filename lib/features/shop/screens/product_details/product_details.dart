import 'package:flutter/material.dart';
import 'package:itri/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:itri/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:itri/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:itri/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  IProductMetaData()

                  // Attributes

                  // checkOut Button

                  // Description

                  // Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

