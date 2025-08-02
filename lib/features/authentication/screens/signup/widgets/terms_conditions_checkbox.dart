import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/features/authentication/controllers/signup/signup_controller.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/constants/text_strings.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class ITermsAndConditionCheckbox extends StatelessWidget {
  const ITermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = IHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(() => Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value)),
        ),
        const SizedBox(width: ISizes.spaceBtwInputFields),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${ITexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${ITexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!
                    .apply(
                      color: dark
                          ? IColors.white
                          : IColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? IColors.white
                          : IColors.primary,
                    ),
              ),
              TextSpan(
                text: '${ITexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ITexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!
                    .apply(
                      color: dark
                          ? IColors.white
                          : IColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? IColors.white
                          : IColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
