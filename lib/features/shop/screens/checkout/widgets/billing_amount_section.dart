import 'package:flutter/material.dart';
import 'package:itri/utils/constants/sizes.dart';

class IBillingAmountSection extends StatelessWidget {
  const IBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('₦51000.00', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ISizes.spaceBtwItems / 2),
        
        // shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₦600.00', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: ISizes.spaceBtwItems / 2),

        // Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₦', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: ISizes.spaceBtwItems / 2),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('₦', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}