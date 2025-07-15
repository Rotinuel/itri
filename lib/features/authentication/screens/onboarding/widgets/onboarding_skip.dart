import 'package:flutter/material.dart';
import 'package:itri/features/authentication/controllers/onboarding_controller.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/device/device_utility.dart';


class OnBoardingSkip extends StatelessWidget{
  const OnBoardingSkip ({
      super.key
  });

  @override
  Widget build(BuildContext context){
    return 
        Positioned(
          top: TDeviceUtils.getAppBarHeight(), 
          right: ISizes.defaultSpace, 
          child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(), 
            child: const Text('skip'),
            ),
        );
      }
  }
