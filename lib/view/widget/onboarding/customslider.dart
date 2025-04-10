import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/onboarding-controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/database/datasource/static/static.dart';

class CustomsliderOnBoarding extends GetView<OnBoardingControllerImp>{
  const CustomsliderOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
          itemCount: onBoardingList.length,
          itemBuilder: (context,i)=>Column(
          children: [
            const SizedBox(height: 70,),
            // Text(onBoardingList[i].title!, style:const TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color:ColorApp.red),),
            // const SizedBox(height: 80,),
            SizedBox(height: 350,
            width: 350,child: Image.asset(onBoardingList[i].image!,),),
            const SizedBox(height: 60,),
            Container(
              width:double.infinity,
              alignment: Alignment.center,
              child: Text(onBoardingList[i].body!,textAlign: TextAlign.center,style:const TextStyle(color: ColorApp.blue,fontSize: 20,fontWeight: FontWeight.bold) ),
            ),
            
          ],
        ));
  }
}









