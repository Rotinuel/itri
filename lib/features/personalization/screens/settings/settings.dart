import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:itri/common/widgets/list_tiles/settings_menu_tiles.dart';
import 'package:itri/common/widgets/list_tiles/user_profile_title.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/features/personalization/screens/address/address.dart';
import 'package:itri/features/personalization/screens/profile/profile.dart';
import 'package:itri/utils/constants/colors.dart';

import 'package:itri/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {

  const SettingsScreen({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            IPrimaryHeaderContainer(
              child: Column(children: [
                IAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),

                IUserProfileTitle(onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: ISizes.spaceBtwSections),
              ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(ISizes.defaultSpace),
              child: Column(
                children: [
                  ISectionHeading(title: 'Account Settings', showActionButton: false,),
                  SizedBox(height: ISizes.spaceBtwItems),

                  ISettingsMenuTile(icon: Iconsax.safe_home, title: 'My Address', subTitle: 'Set shopping delivery address', onTap: ()=> Get.to(()=> const UserAddressScreen()),),
                  ISettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout'),
                  ISettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders'),
                  ISettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                  ISettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted Coupons'),
                  ISettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any Kind of notification message'),
                  ISettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),

                  SizedBox(height: ISizes.spaceBtwSections),
                  ISectionHeading(title: 'App Settings', showActionButton: false),
                  SizedBox(height: ISizes.spaceBtwItems),
                  ISettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your cloud Firebase'),

                  ISettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Set Recommendation based on location', trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  ISettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value) {} )),
                  ISettingsMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subTitle: 'Set image quality to  be seen', trailing: Switch(value: false, onChanged: (value) {} )),

                  const SizedBox(height: ISizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                    const SizedBox(height: ISizes.spaceBtwSections * 2.5),
                  
              ],),
            ),
          ],
        ),
      ),
    );
  }
}


