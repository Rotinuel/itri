import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IAppBar(showBackArrow: true, title: Text('Add new Address')),

      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(ISizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),),
              const SizedBox(height: ISizes.spaceBtwInputFields),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number'),),
              const SizedBox(height: ISizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'),)),
                  const SizedBox(width: ISizes.spaceBtwInputFields),
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Postal Code'),)),
                ],
              ),
              const SizedBox(height: ISizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City'),)),
                  const SizedBox(width: ISizes.spaceBtwInputFields),
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'State'),)),
                ],
              ),
              const SizedBox(height: ISizes.spaceBtwInputFields),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),
              const SizedBox(height: ISizes.defaultSpace),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Save'),))
              
            ],),
        ),),
      ),
    );
  }
}