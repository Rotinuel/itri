import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:itri/data/authentication/authentication/authentication_repository.dart';
import 'package:itri/data/authentication/user/user_repository.dart';
import 'package:itri/features/authentication/screens/signup/verify_email.dart';
import 'package:itri/features/personalization/models/user_model.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/helpers/network_manager.dart';
import 'package:itri/utils/popups/full_screen_loader.dart';
import 'package:itri/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables for form fields
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // Method to handle signup logic
  void signup() async {
    try {
      //  start loading
      IFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        IImages.productImage75,
      );

      // check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        IFullScreenLoader.stopLoading();
        ILoaders.errorSnackBar(
          title: 'No Internet Connection',
          message: 'Please check your internet connection and try again.',
        );
        return;
      }

      // Validate form
      if (!signupFormKey.currentState!.validate()) {
        IFullScreenLoader.stopLoading();
        return;
      }
      

      // Privacy Policy check
      if (!privacyPolicy.value) {
        ILoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'Please read and accept the privacy policy & Terms of use to continue.',
        );
        return;
      }

      // Register user in the firebase or backend service
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(email.text.trim(), password.text.trim());
      
      // save authenticate user data in the
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      IFullScreenLoader.stopLoading();

      // Show success message and redirect to the next screen
      ILoaders.successSnackBar(
        title: 'Congratulation!',
        message: 'Your Account has been created ${newUser.firstName}!',
      );

      // Move to Verify Email Screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim(),));

    } catch (e) {
      // show some Generic Error to the user
      IFullScreenLoader.stopLoading();
      ILoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } 
  }
}
