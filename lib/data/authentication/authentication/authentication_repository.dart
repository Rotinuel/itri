import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:itri/features/authentication/screens/login/login.dart';
import 'package:itri/features/authentication/screens/onboarding/onboarding.dart';
import 'package:itri/features/authentication/screens/signup/verify_email.dart';
import 'package:itri/navigation_menu.dart';
import 'package:itri/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:itri/utils/exceptions/firebase_exceptions.dart';
import 'package:itri/utils/exceptions/format_exceptions.dart';
import 'package:itri/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  // This class would contain methods for
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  //called from main.dart on app launch

  @override
  void onReady() {
    FlutterNativeSplash.remove(); // Remove the splash screen after initialization
    screenRedirect();
  }

  // Function to show Relevant screen
  screenRedirect() async {
    final user = _auth.currentUser;
    
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
  // Local Storage
      deviceStorage.writeIfNull('IsFirstTime', true);
      deviceStorage.read('IsFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(const OnBoardingScreen());
    }
  }

  // Email Authentication - login
  Future<UserCredential> loginInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw IFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw IFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const IFormatException();
    } on PlatformException catch (e) {
      throw IPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong. Please try again later.';
    }
  }
    
  // Email Authentication - register
  Future<UserCredential> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw IFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw IFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const IFormatException();
    } on PlatformException catch (e) {
      throw IPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong. Please try again later.';
    }
  }

  // Email Verification - Mail Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw IFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw IFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const IFormatException();
    } on PlatformException catch (e) {
      throw IPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong. Please try again later.';
    }
  }


  // Email Authentication - logout
  Future<void> logout() async {
     try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw IFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw IFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const IFormatException();
    } on PlatformException catch (e) {
      throw IPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong. Please try again later.';
    }
  }




}
