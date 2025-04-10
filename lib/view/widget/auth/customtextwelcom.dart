import 'package:flutter/material.dart';
import 'package:store/core/constant/color.dart';

class CustomTextWelcome extends StatelessWidget{
final String text ;
  const CustomTextWelcome({Key? key, required this.text}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Container(
        alignment:Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 40,
            fontFamily: "Cream",color: ColorApp.red),),
    );
  }
}