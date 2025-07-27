import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/device/device_utility.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class IAppBar extends StatelessWidget implements PreferredSizeWidget{
  const IAppBar({
    super.key, 
    this.title, 
    this.actions, 
    this.leadingIcon, 
    this.leadingOnPressed,
    this.showBackArrow = false,
    });

    final Widget? title;
    final bool showBackArrow;
    final IconData? leadingIcon;
    final List<Widget>? actions;
    final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return Padding(padding: EdgeInsetsGeometry.symmetric(
      horizontal: ISizes.md
    ),child: AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow 
      ? IconButton(onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left, color: dark ? IColors.white : IColors.dark)): leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
      title: title,
      actions: actions,
    ));
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}