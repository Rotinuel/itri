import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/features/authentication/controllers/onboarding/onboarding_controller.dart';

import 'package:itri/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:itri/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:itri/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:itri/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: IImages.onBoardingImage1, 
                title: ITexts.onBoardingTitle1, 
                subTitle: ITexts.onBoardingSubTitle1
              ),
              OnBoardingPage(
                image: IImages.onBoardingImage2, 
                title: ITexts.onBoardingTitle2, 
                subTitle: ITexts.onBoardingSubTitle2
              ),
              OnBoardingPage(
                image: IImages.onBoardingImage3, 
                title: ITexts.onBoardingTitle3, 
                subTitle: ITexts.onBoardingSubTitle3
              ),
            ],
          ),

          // Skip Button
          OnBoardingSkip(),

          // Dot Navigation SmothPage Indicator
          const OnBoardingDotNavigation(),

          // Circular Button
          OnBoardingNextButton(),
          
        ],
      ),
    );
  }
}




