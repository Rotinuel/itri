import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/device/device_utility.dart';
import 'package:itri/utils/helpers/helper_functions.dart';


class OnBoardingNextButton extends StatelessWidget{
  const OnBoardingNextButton ({
      super.key
  });

  @override
  Widget build(BuildContext context){
    final dark = IHelperFunctions.isDarkMode(context);
    return 
        Positioned(
            right: ISizes.defaultSpace,
            bottom: TDeviceUtils.getBottomNavigationBarHeight(),
            child: ElevatedButton(
              onPressed: () => OnBoardingController.instance.nextPage(),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? IColors.primary : Colors.black,
              ),
              child: const Icon(Iconsax.arrow_right_3),
              ),
            );
      }
  }