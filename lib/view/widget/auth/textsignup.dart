import 'package:flutter/material.dart';
import 'package:store/core/constant/color.dart';

class CostumTextSignuporsignin extends StatelessWidget{
final String textone;
final String texttwo;
final void Function() onTap;
  const CostumTextSignuporsignin ({super.key, required this.textone, required this.texttwo,required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(textone),
                InkWell(
                  onTap:onTap,
                  child: Text(texttwo,
                    style:const TextStyle(
                      color: ColorApp.red,
                      fontWeight: FontWeight.bold,),),)
              ],
            );       
  }
}