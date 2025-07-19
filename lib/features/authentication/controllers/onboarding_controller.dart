
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final PageController pageController = PageController();
  RxInt currentPage = 0.obs;

  void nextPage(){
    if(currentPage.value == 2){
      return;
    }
    pageController.nextPage(duration: Duration(microseconds: 220), curve: Curves.linear);
  }

  void updatePageIndicator(index){
    currentPage.value = index;
  }

  void dotNavigation(index){
    currentPage.value = index;
    pageController.jumpToPage(index);
  }
  bool get isLastPage => currentPage.value == 2;
}