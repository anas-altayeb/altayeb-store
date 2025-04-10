import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store/database/datasource/static/static.dart';
import 'package:store/view/Screens/Onboarding/locationpage.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChanged(int index);
}


class OnBoardingControllerImp extends OnBoardingController{
  late PageController pageController;
  int currentpage = 0;
  
  //MyServices myServices = Get.find();

  @override

  next() {
    currentpage++;

    if (currentpage>onBoardingList.length-1){
      //myServices.sharedPreferences.setString("step", "1");
      Get.to(() => LocationPage());
    }
    else{
      pageController.animateToPage(currentpage, duration: const Duration(milliseconds: 150), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentpage=index;
    update();
  }


  @override
  void onInit(){
pageController = PageController();
super.onInit();

  }
  
}