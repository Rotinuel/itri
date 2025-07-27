import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ICouponCode extends StatelessWidget {
  const ICouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return IRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? IColors.dark : IColors.white,
      padding: EdgeInsets.only(top: ISizes.sm,
      bottom: ISizes.sm,
      right: ISizes.sm,
      left: ISizes.md),
      child: Row(
        children: [
          // TextField
          Flexible(child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Have a promo code? Enter here ',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none
            ),
          ),
          ),
          // Button
          SizedBox(
            width: 80,
            child: ElevatedButton(onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? IColors.white.withAlpha(130) : IColors.dark.withAlpha(130),
                backgroundColor: Colors.grey.withAlpha(51),
                side: BorderSide(color: Colors.grey.withAlpha(26)), 
    
              ),
              child: const Text('Apply'),
            ),
          )
        ],
      ),
    );
  }
}