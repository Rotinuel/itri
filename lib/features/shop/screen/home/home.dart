import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:itri/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/features/shop/screen/home/widgets/home_appbar.dart';
import 'package:itri/features/shop/screen/home/widgets/home_categories.dart';
import 'package:itri/utils/constants/sizes.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            IPrimaryHeaderContainer(
              child: Column(
                children: [
                  
                  // app bar
                  const IHomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  
                  // searchbar
                  const ISearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  
                  // Categories
                  Padding(padding: EdgeInsetsGeometry.only(left: TSizes.defaultSpace), 
                  child: Column(
                    children: [
                    ISectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Categories
                  IHomeCategories()

                  ],))
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}








