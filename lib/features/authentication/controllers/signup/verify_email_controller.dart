import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:itri/common/widgets/success_screen/success_screen.dart';
import 'package:itri/data/authentication/authentication/authentication_repository.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/constants/text_strings.dart';
import 'package:itri/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();
  
  // Method to handle email verification logic
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  // send email verification
    sendEmailVerification() async{
      try{
        await AuthenticationRepository.instance.sendEmailVerification();
        ILoaders.successSnackBar(title: 'Email Sent', message: 'Please check your inbox and verify your email');

      } catch (e) {
        ILoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
      }
    }

    // timeout for email verification
    setTimerForAutoRedirect() {
      Timer.periodic(const Duration(seconds: 1), (timer) async{
        await FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if (user?.emailVerified ?? false){
          timer.cancel();
          Get.off(
            () => SuccessScreen(
            image: IImages.successfullyRegisterAnimation,
            title: ITexts.yourAccountCreatedTitle,
            subTitle: ITexts.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ));
        }
      });
    }

    // Manually trigger email verification
    checkEmailVerification() async {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null && currentUser.emailVerified) {
        Get.off(
            () => SuccessScreen(
            image: IImages.successfullyRegisterAnimation,
            title: ITexts.yourAccountCreatedTitle,
            subTitle: ITexts.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ));
    }
  }
}