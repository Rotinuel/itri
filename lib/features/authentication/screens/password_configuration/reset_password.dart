import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/constants/text_strings.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear),),],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(IImages.deliveredEmailIllustration),
                width: IHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              Text(
                ITexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ISizes.spaceBtwItems),

              Text(
                ITexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text(ITexts.done),
                ),
              ),
              const SizedBox(height: ISizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text(ITexts.resendEmail),
                ),
              ),
            ]
          )
        
        ),
      )
    );
  }
}