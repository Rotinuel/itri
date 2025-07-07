import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  
  // variables 

  // update current index when page scroll 
  void updatePageIndicator(index) {}
  
  // jump to the specific dot selected page
  void dotNavigationClick(index) {}

  // update current index & jump to next page
  void nextPage() {}

  // update current index & jump to last page
  void skipPage() {}
}