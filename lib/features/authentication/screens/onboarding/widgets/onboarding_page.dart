import 'package:flutter/material.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/helpers/helper_functions.dart';


class OnBoardingPage extends StatelessWidget{
  const OnBoardingPage ({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
              Image(
                    width: IHelperFunctions.screenWidth() * 0.8,
                    height: IHelperFunctions.screenHeight() * 0.6,
                    image: AssetImage(image),
                  ),
              Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
              const SizedBox(height: ISizes.spaceBtwItems),
              Text(
                    subTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
              ],
              ),
      );
            
  }
}

