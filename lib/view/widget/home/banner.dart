import 'package:flutter/material.dart';
import 'package:store/core/constant/color.dart';

// ignore: must_be_immutable
class Banners extends StatelessWidget {
  const Banners({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.symmetric(vertical: 15,),
            child: Stack(children: [
            Container(
              alignment: Alignment.center,
              height: 150,
              decoration: BoxDecoration(color: ColorApp.red,
                                        borderRadius: BorderRadius.circular(30)),
              child: const ListTile(
                title: Text("A Summer Surprise",style: TextStyle(color: Colors.white,fontSize: 20),),
                subtitle: Text("Cash bach 20%",style: TextStyle(color: Colors.white,fontSize: 30),),
              ),),
              Positioned(
                top: -40,
                right: -40,
                child: Container(height: 150,width: 150,
                    decoration: BoxDecoration(
                      color: ColorApp.veryred,
                      borderRadius: BorderRadius.circular(200)),),),
              Positioned(
                bottom: -120,
                left: 40,
                child: Container(height: 150,width: 150,
                    decoration: BoxDecoration(
                      color: ColorApp.veryred,
                      borderRadius: BorderRadius.circular(200)),),),
              
          ],),);
  }
}
