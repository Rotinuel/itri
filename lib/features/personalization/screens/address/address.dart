import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/features/personalization/screens/address/add_new_address.dart';
import 'package:itri/features/personalization/screens/address/widgets/single_address.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: TColors.white),
        ),
        appBar: IAppBar(
          showBackArrow: true,
          title: Text('Address', style: Theme.of(context).textTheme.headlineSmall),
        ),

        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(ISizes.defaultSpace),
            child: Column(
              children: [
                ISingleAddress(selectedAddress: true),
                ISingleAddress(selectedAddress: false),
              ],
            ),
            ),
        ),
    );
  }
}