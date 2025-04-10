import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/onboarding-controller.dart';
import 'package:store/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp>{
  
  const CustomButtonOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const EdgeInsets.only(bottom: 100),
                decoration: BoxDecoration(
                  //boxShadow:const[ BoxShadow(color: ColorApp.blue ,offset: Offset(0,0),blurRadius: 10)] ,
                  color: ColorApp.blue,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: MaterialButton(onPressed: (){
                  controller.next();
                },
                textColor:Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 100 , vertical: 15),
                child:const Text("continue" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,), ),),
                );
  }
}