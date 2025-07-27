  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:itri/common/widgets/success_screen/success_screen.dart';
  import 'package:itri/features/authentication/screens/login/login.dart';
  import 'package:itri/utils/constants/image_strings.dart';
  import 'package:itri/utils/constants/sizes.dart';
  import 'package:itri/utils/constants/text_strings.dart';
  import 'package:itri/utils/helpers/helper_functions.dart';

  class VerifyEmailScreen extends StatelessWidget {
    const VerifyEmailScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
          ]
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(ISizes.defaultSpace),
            child: Column(
              children: [
                // image
                Image(image: const AssetImage(IImages.deliveredEmailIllustration), width: IHelperFunctions.screenWidth() * 0.6,),
                const SizedBox(height: ISizes.spaceBtwSections),

                // Title
                Text(
                  TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: ISizes.spaceBtwItems),
                // Subtitle
                Text(
                  'support@lofi@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: ISizes.spaceBtwItems),
                Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                const SizedBox(height: ISizes.spaceBtwSections),
                
                // button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                      image: IImages.staticSuccessIllustration,
                      title: TTexts.yourAccountCreatedTitle,
                      subTitle: TTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    )) ,
                    child: const Text(TTexts.tContinue),
                  ),
                ),
                const SizedBox(height: ISizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => {},
                    child: const Text(TTexts.resendEmail),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
