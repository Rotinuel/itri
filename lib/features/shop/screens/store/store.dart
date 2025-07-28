import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/appbar/tabbar.dart';
import 'package:itri/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:itri/common/widgets/layouts/grid_layout.dart';
import 'package:itri/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/common/widgets/brands/brand_card.dart';
import 'package:itri/features/shop/screens/brand/all_brands.dart';
import 'package:itri/features/shop/screens/store/widgets/category_tab.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: IAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [ICartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: IHelperFunctions.isDarkMode(context)
                    ? IColors.black
                    : IColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(ISizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // --search bar
                      const SizedBox(height: ISizes.spaceBtwItems),
                      const ISearchContainer(
                        text: '',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: ISizes.spaceBtwSections),
      
                      // --Feature brands
                      ISectionHeading(
                        title: 'Featured Brands',
                        onPressed: () => Get.to(() => const AllBrandsScreen()),
                      ),
                      const SizedBox(height: ISizes.spaceBtwItems / 1.5),
      
                      IGridLayout(
                        itemCount: 4, mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const IBrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),
      
                //  Tabs
                bottom: const ITabBar(
                  tabs: [
                    Tab(child: Text('Modules')),
                    Tab(child: Text('CONTROL SYSTEMS & PLCs')),
                    Tab(child: Text('ACTUATOR')),
                    Tab(child: Text('PUMPS')),
                    Tab(child: Text('FILTERS')),
                    Tab(child: Text('CIRCUIT BREAKERS')),
                    Tab(child: Text('CONVERTERS')),
                  ]
                  )
      
              ),
            ];
          },
          body: const TabBarView(
            children: [
              ICategoryTab(),
              ICategoryTab(),
              ICategoryTab(),
              ICategoryTab(),
              ICategoryTab(),
              ICategoryTab(),
              ICategoryTab(),
            ],),
        ),
      ),
    );
  }
}



