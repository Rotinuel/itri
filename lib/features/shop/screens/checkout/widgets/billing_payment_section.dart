import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IBillingPaymentSection extends StatelessWidget {
  const IBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ISectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: ISizes.spaceBtwItems / 2),
        Row(
          children: [
            IRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? IColors.light : IColors.white,
              padding: const EdgeInsets.all(ISizes.sm),
              child: const Image(image: AssetImage(IImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(width: ISizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],

    );
  }
}