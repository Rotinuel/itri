import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:itri/features/shop/screens/checkout/checkout.dart';
import 'package:itri/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(ISizes.defaultSpace),
        child: ICartItems(),
      ),
      // checkout
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ISizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckOutScreen()), child: Text('Checkout ₦5000.00')),
      ),
    );
  }
}


