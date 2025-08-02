import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/features/authentication/controllers/signup/signup_controller.dart';
import 'package:itri/utils/constants/sizes.dart';
import 'package:itri/utils/constants/text_strings.dart';
import 'package:itri/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:itri/utils/validators/validation.dart';


class ISignupForm extends StatelessWidget {
  const ISignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          // First Name and Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) => IValidator.validateEmptyText('First name', value),
                  controller: controller.firstName,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ITexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ISizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  validator: (value) => IValidator.validateEmptyText('Last name', value),
                  controller: controller.lastName,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ITexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ISizes.spaceBtwInputFields),
    
          // username
          TextFormField(
            validator: (value) => IValidator.validateEmptyText('Username', value),
            controller: controller.username,
            expands: false,
            decoration: const InputDecoration(
              labelText: ITexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
    
          const SizedBox(height: ISizes.spaceBtwInputFields),
          // email
          TextFormField(
            validator: (value) => IValidator.validateEmail(value),
            controller: controller.email,
            expands: false,
            decoration: const InputDecoration(
              labelText: ITexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
    
          const SizedBox(height: ISizes.spaceBtwInputFields),
          // Phone Number
          TextFormField(
            validator: (value) => IValidator.validatePhoneNumber(value),
            controller: controller.phoneNumber,
            expands: false,
            decoration: const InputDecoration(
              labelText: ITexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
    
          const SizedBox(height: ISizes.spaceBtwInputFields),
          // Password
          Obx(
            () =>
             TextFormField(
              validator: (value) => IValidator.validatePassword(value),
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: ITexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, 
                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                ),
              ),
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwSections),
    
          // Terms&Conditions CheckBox
          const ITermsAndConditionCheckbox(),
          // sign up button
          const SizedBox(height: ISizes.spaceBtwSections),
          
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => controller.signup(), child: const Text(ITexts.createAccount))),
        ],
      ),
    );
  }
}

