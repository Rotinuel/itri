import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/features/personalization/screens/settings/settings.dart';
import 'package:itri/features/shop/screens/home/home.dart';
import 'package:itri/features/shop/screens/store/store.dart';
import 'package:itri/features/shop/screens/wishlist/wishlist.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = IHelperFunctions.isDarkMode(context);


    return Scaffold(
      bottomNavigationBar: Obx(
        () => 
          NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? IColors.black : Colors.white,
          indicatorColor: darkMode ? IColors.white.withAlpha(26) : IColors.black.withAlpha(26),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home',),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store',),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList',),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile',),
          ]),
      ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const SettingsScreen(),
  ];
}

