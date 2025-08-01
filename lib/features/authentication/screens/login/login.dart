import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/common/styles/spacing_styles.dart';
import 'package:itri/common/widgets/login_signup/form_divider.dart';
import 'package:itri/common/widgets/login_signup/social_buttons.dart';
import 'package:itri/features/authentication/screens/login/widgets/login_form.dart';
import 'package:itri/features/authentication/screens/login/widgets/login_header.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              const ILoginHeader(),

              // Form
              const ILoginForm(),

              // Divider
              IFormDivider(dividerText: ITexts.orSignInWith.capitalize!),
              const SizedBox(height: ISizes.spaceBtwSections),

              // footer
              const ISocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
