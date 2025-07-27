import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ISingleAddress extends StatelessWidget {
  const ISingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return IRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: EdgeInsets.all(ISizes.md),
       backgroundColor: selectedAddress ? IColors.primary.withAlpha(130) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? IColors.darkerGrey : IColors.grey,
      margin: const EdgeInsets.only(bottom: ISizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? IColors.light : IColors.dark : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: ISizes.sm / 2),
              const Text('(+234) 8134284100', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: ISizes.sm / 2),
              const Text('1234 olambe road, south ifo, ogun state', softWrap: true),
            ],
          )
        ],
      ),
      );
  }
}