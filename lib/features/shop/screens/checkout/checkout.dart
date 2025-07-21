import 'package:flutter/material.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/products/cart/coupon_widget.dart';
import 'package:itri/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: IAppBar(
        showBackArrow: true,
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(ISizes.defaultSpace),
            child: Column(
              children: [
                ICartItems(showAddRemoveButton: false),
                SizedBox(height: ISizes.spaceBtwSections),
            
                // Coupon TextField
                ICouponCode(),
                const SizedBox(height: ISizes.spaceBtwSections),

                // Billing Section
                IRoundedContainer(
                  showBorder: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  child: Column(
                    children: [
                      // Pricing
                      // Divider
                      // Payment Methods
                      // Address
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

