import 'package:flutter/material.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/constants/text_strings.dart';
import 'package:itri/utils/helpers/helper_functions.dart';


class ILoginHeader extends StatelessWidget {
  const ILoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? IImages.lightAppLogo : IImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    ITexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: ISizes.sm),
                  Text(
                    ITexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              );
  }
}