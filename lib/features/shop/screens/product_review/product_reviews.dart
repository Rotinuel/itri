import 'package:flutter/material.dart'; 
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/products/ratings/rating_indicator.dart';
import 'package:itri/features/shop/screens/product_review/widgets/rating_progress_indicator.dart';
import 'package:itri/features/shop/screens/product_review/widgets/user_review_card.dart';
import 'package:itri/utils/constants/sizes.dart';


class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and reviews are verified and are from people who use the same type of device that you use."),
              const SizedBox(height: ISizes.spaceBtwItems),

              const IOverallProductRating(),
              const IRatingBarIndicator(rating: 3.5),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: ISizes.spaceBtwSections),

              // user review list
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
          ),
      )
    );
  }
}



