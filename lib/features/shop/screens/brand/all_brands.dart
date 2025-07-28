import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/brands/brand_card.dart';
import 'package:itri/common/widgets/layouts/grid_layout.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/features/shop/screens/brand/brand_products.dart';
import 'package:itri/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(ISizes.defaultSpace),
        child: Column(
          children: [
            // heading
            const ISectionHeading(title: 'Brands', showActionButton: false),
            const SizedBox(height: ISizes.spaceBtwItems),

            IGridLayout(
              itemCount: 10,
              mainAxisExtent: 80,
              itemBuilder: (context, index) => IBrandCard(
                showBorder: true,
                onTap: () => Get.to(() => const IBrandProducts()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
