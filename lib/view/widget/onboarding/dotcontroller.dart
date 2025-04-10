import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:store/controller/onboarding-controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/database/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget{
  const CustomDotControllerOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller)=>Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(onBoardingList.length, (index)=>AnimatedContainer(
                                margin: const EdgeInsets.all(8),
                                duration: const Duration(milliseconds: 200),
                                width: controller.currentpage==index?20:6,
                                height: 6,
                                decoration: BoxDecoration(
                                  boxShadow:const[ BoxShadow(color: ColorApp.blue ,offset: Offset(2, 2),blurRadius: 200)],
                                  color: ColorApp.blue,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                ))
              ],),);
  }
}