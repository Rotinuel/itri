import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IOrderListItems extends StatelessWidget {
  const IOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);  
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, _) => const SizedBox(height: ISizes.spaceBtwItems),
      itemBuilder: (_, index) =>  IRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(ISizes.md),
        backgroundColor: dark ? IColors.dark : IColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                // 1 --Icon
                const Icon(Iconsax.shop),
                const SizedBox(width: ISizes.spaceBtwItems / 2),
      
                // 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: IColors.primary, fontWeightDelta: 1),),
                      Text('27 July 2025', style: Theme.of(context).textTheme.headlineSmall), 
                    ],
                  ),
                ),
      
                // 3 - Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: ISizes.iconSm)), 
              ],
            ),
            const SizedBox(height: ISizes.spaceBtwItems),
      
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1 --Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: ISizes.spaceBtwItems / 2),
                  
                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#342d2]', style: Theme.of(context).textTheme.titleMedium), 
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      // 1 --Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: ISizes.spaceBtwItems / 2),
                  
                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('24 july 2026', style: Theme.of(context).textTheme.titleMedium), 
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


