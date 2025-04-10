import 'package:flutter/material.dart';
import 'package:store/core/constant/imageasset.dart';

class CustomImageWelcome extends StatelessWidget{

  const CustomImageWelcome({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Container(
        alignment:Alignment.center,
        child: SizedBox(
          width: 350,
          height: 400,
          child: Image.asset(ImageAsset.onboardingimageone,),)
    );
  }
}