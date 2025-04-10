import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/onboarding-controller.dart';
import 'package:store/view/widget/onboarding/custombutton.dart';
import 'package:store/view/widget/onboarding/customslider.dart';
import 'package:store/view/widget/onboarding/dotcontroller.dart';


class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context){
    Get.lazyPut(()=>OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Expanded(
              flex: 3,
              child: CustomsliderOnBoarding(),),
        Expanded(
          flex: 1,
          child: Column(children: [
              CustomDotControllerOnBoarding(),
              Spacer(flex: 2,),
              CustomButtonOnBoarding(),
              
        ],))
          ],
      )
      ),
    );
  }
}
