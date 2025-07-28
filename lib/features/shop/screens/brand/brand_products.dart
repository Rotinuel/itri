import 'package:flutter/material.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/brands/brand_card.dart';
import 'package:itri/common/widgets/products/sortable/sortable_products.dart';
import 'package:itri/utils/constants/sizes.dart';

class IBrandProducts extends StatelessWidget {
  const IBrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(title: Text('Nike'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
              // Brand details
              IBrandCard(showBorder: true),
              SizedBox(height: ISizes.spaceBtwSections),

              ISortableProducts()
              
            ],
          ),
        )
          ),
    );
  }
}