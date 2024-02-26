import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;


  void updatePageIndicator(index)=> currentPageIndex.value = index;

  void dotNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpToPage(index);
  }

  void nextPage(){
    if(currentPageIndex == 2){
      // Get.to(LoginScreen);
    }else{
      int page = currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage(){
    currentPageIndex.value =2;
    pageController.jumpToPage(2);
  }

}