import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:itri/data/authentication/authentication/authentication_repository.dart';
import 'package:itri/utils/constants/image_strings.dart';
import 'package:itri/utils/helpers/network_manager.dart';
import 'package:itri/utils/popups/full_screen_loader.dart';
import 'package:itri/utils/popups/loaders.dart';

class LoginController extends GetxController{

  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  // Email and Password validation
  Future<void> emailAndPasswordSignIn() async{
    try{
      // start loading
      IFullScreenLoader.openLoadingDialog('Logging you in...', IImages.acerlogo);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        IFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        IFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if Remember Me is checked
      if(rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // login user using email & password Authentication
      // ignore: unused_local_variable
      final userCredentials = await AuthenticationRepository.instance.loginInWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove loader
      IFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    }
    
    catch (e) {
      IFullScreenLoader.stopLoading();
      ILoaders.errorSnackBar(
        title: 'Oh Snap',
        message: e.toString(),
      );
    }
  }
}