import 'package:flutter/material.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/utils/constants/sizes.dart';

class IBillingAddressSection extends StatelessWidget {
  const IBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ISectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Xalphi', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: ISizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: ISizes.spaceBtwItems),
            Text('+234-813-428-4100', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ISizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: ISizes.spaceBtwItems),
            Expanded(child: Text('Delima beach, south ifo imunastagara', style: Theme.of(context).textTheme.bodyMedium, softWrap: true)),
          ],
        ),
      ],
    );
  }
}