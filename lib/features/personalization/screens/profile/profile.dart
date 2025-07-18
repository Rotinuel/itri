import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/common/widgets/images/i_circular_image.dart';
import 'package:itri/common/widgets/texts/section_heading.dart';
import 'package:itri/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const ICircularImage(
                      image: IImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: ISizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ISizes.spaceBtwItems),

              const ISectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: ISizes.spaceBtwItems),

              IProfileMenu(title: 'Name', value: 'Xalphi', onPressed: () {}),
              IProfileMenu(
                title: 'Username',
                value: 'Xalphi',
                onPressed: () {},
              ),

              const SizedBox(height: ISizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: ISizes.spaceBtwItems),

              const ISectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: ISizes.spaceBtwItems),

              IProfileMenu(
                title: 'User ID',
                value: '45678',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              IProfileMenu(
                title: 'E-mail',
                value: 'xalphi@proton.me',
                onPressed: () {},
              ),
              IProfileMenu(
                title: 'Phone Number',
                value: '+234-813-428-4100',
                onPressed: () {},
              ),
              IProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              IProfileMenu(
                title: 'Date of Birth',
                value: '02 Oct 1960',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: ISizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
