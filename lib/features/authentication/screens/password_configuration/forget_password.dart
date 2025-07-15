import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsetsGeometry.all(ISizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: ISizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: ISizes.spaceBtwSections * 2),

            // Text field
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: ISizes.spaceBtwSections * 2),

            // Button
            SizedBox(width:double.infinity, child: ElevatedButton( onPressed: () => Get.off(() => const ResetPassword()),
            child: Text(TTexts.submit))),
          ]
          ),
        ),
    );
  }
}