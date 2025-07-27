import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/products/cart/coupon_widget.dart';
import 'package:itri/common/widgets/success_screen/success_screen.dart';
import 'package:itri/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:itri/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:itri/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:itri/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:itri/navigation_menu.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
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
                  padding: const EdgeInsets.all(ISizes.md),
                  backgroundColor: dark ? IColors.black : IColors.white,
                  child: Column(
                    children: [
                      // Pricing
                      IBillingAmountSection(),
                      SizedBox(height: ISizes.spaceBtwItems),

                      // Divider
                      Divider(),
                      SizedBox(height: ISizes.spaceBtwItems),

                      // Payment Methods
                      IBillingPaymentSection(),
                      SizedBox(height: ISizes.spaceBtwItems),

                      // Address
                      IBillingAddressSection(),
                      SizedBox(height: ISizes.spaceBtwItems),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ISizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: IImages.successfulPaymentIcon,
              title: 'Payment Successful',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            )
          ), 
        child: Text('Checkout ₦5000.00')),
      ),
    );
  }
}

