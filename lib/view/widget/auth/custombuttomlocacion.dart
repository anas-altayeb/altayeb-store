import 'package:flutter/material.dart';
import 'package:store/core/constant/color.dart';

class CustomBottomLocation extends StatelessWidget{
  final String text;
  final VoidCallback onPress;
  const CustomBottomLocation ({super.key, required this.text,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(vertical: 12),
      onPressed: onPress,color: ColorApp.red,textColor: Colors.white,
      child: Text(text,style: const TextStyle(fontSize: 20),),),
    );       
  }
}