import 'package:flutter/material.dart';
import 'package:itri/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/device/device_utility.dart';
import 'package:itri/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingDotNavigation extends StatelessWidget{
  const OnBoardingDotNavigation ({
      super.key
  });

  @override
  Widget build(BuildContext context){
    final controller = OnBoardingController.instance;
    final dark = IHelperFunctions.isDarkMode(context);
    return 
        Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: ISizes.defaultSpace,
            child: SmoothPageIndicator(
              count: 3, 
              controller: controller.pageController,
              onDotClicked: controller.dotNavigationClick, 
              effect: ExpandingDotsEffect(activeDotColor: dark ? IColors.light : IColors.dark, dotHeight: 6)),
            );
      }
  }