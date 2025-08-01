import 'package:flutter/material.dart';
import 'package:itri/common/styles/spacing_styles.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/constants/text_strings.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key, 
    required this.image, 
    required this.title, 
    required this.subTitle, 
    required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: IHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ISizes.spaceBtwItems),

              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(ITexts.iContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
