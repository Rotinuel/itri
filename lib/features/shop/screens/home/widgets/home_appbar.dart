import 'package:flutter/material.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/text_strings.dart';

class IHomeAppBar extends StatelessWidget {
  const IHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(ITexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: IColors.grey)),
          Text(ITexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: IColors.white)),
        ],
      ),
      actions: [
        ICartCounterIcon(onPressed: () { }, iconColor: IColors.white, counterBgColor: IColors. black, counterTextColor: IColors.white),
      ],
    );
   }
}