import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itri/features/personalization/models/user_model.dart';
import 'package:itri/utils/exceptions/firebase_exceptions.dart';
import 'package:itri/utils/exceptions/format_exceptions.dart';
import 'package:itri/utils/exceptions/platform_exceptions.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // function to save user data to firestore.

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('users').doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw IFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const IFormatException();
    } on PlatformException catch (e) {
      throw IPlatformException(e.code).message;
    } catch (e) {
      throw 'An unexpected error occurred while saving user data.';
    }
  }
}