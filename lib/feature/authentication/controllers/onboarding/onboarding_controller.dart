import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:socialclone/feature/authentication/screens/login/login.dart';

class OnboardingController extends GetxController {

  static OnboardingController get to => Get.find<OnboardingController>();

  // variable to track the current page index
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  // update the current page index when the page changes

  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }
   void nextPage(){
    if(currentPageIndex.value==2) {
      Get.offAll(() => LoginScreen());
      return;
    }
    currentPageIndex.value++;
    pageController.jumpToPage(currentPageIndex.value);

   }

  // jump to the next page

   void dotNavigationClick(int index){
    pageController.jumpToPage(index);
    updatePageIndicator(index);
   }

  // jump to the skip page
   void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(currentPageIndex.value);
   }

}

