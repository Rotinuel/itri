import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/features/authentication/screens/signup/verify_email.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/constants/text_strings.dart';
import 'package:itri/utils/helpers/helper_functions.dart';


class ISignupForm extends StatelessWidget {
  const ISignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ISizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ISizes.spaceBtwInputFields),
    
          // username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
    
          const SizedBox(height: ISizes.spaceBtwInputFields),
          // email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
    
          const SizedBox(height: ISizes.spaceBtwInputFields),
          // Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
    
          const SizedBox(height: ISizes.spaceBtwInputFields),
          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwSections),
    
          // Terms&Conditions CheckBox
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(width: ISizes.spaceBtwInputFields),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${TTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '${TTexts.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!
                          .apply(
                            color: dark
                                ? TColors.white
                                : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? TColors.white
                                : TColors.primary,
                          ),
                    ),
                    TextSpan(
                      text: '${TTexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: TTexts.termsOfUse,
                      style: Theme.of(context).textTheme.bodyMedium!
                          .apply(
                            color: dark
                                ? TColors.white
                                : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? TColors.white
                                : TColors.primary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // sign up button
          const SizedBox(height: ISizes.spaceBtwSections),
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(TTexts.createAccount))),
        ],
      ),
    );
  }
}
