import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/icons/i_circular_icon.dart';
import 'package:itri/common/widgets/layouts/grid_layout.dart';
import 'package:itri/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:itri/features/shop/screens/home/home.dart';
import 'package:itri/utils/constants/sizes.dart';


class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          ICircularIcon(icon: Iconsax.add, onPressed: ()=> Get.to(const HomeScreen()))
          ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
              IGridLayout(itemCount: 6, itemBuilder: (_, index) => IProductCardVertical())
          
          ],),
        ),
      )
    );
  }
}
