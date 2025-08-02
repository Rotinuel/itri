import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/common/widgets/login_signup/form_divider.dart';
import 'package:itri/common/widgets/login_signup/social_buttons.dart';
import 'package:itri/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                ITexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              // Form
              const ISignupForm(),
              const SizedBox(height: ISizes.spaceBtwSections),
              // divider
              IFormDivider(dividerText: ITexts.orSignUpWith.capitalize!),
              const SizedBox(height: ISizes.spaceBtwSections),
              // social media buttons
              const ISocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

