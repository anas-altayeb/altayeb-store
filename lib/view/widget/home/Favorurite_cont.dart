// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widget/auth/custom_text.dart';

class MyFavoruritecontainer extends StatelessWidget {
  final String productname;
  final String productValum;
  final String productPrice;
  final String productImage;

  const MyFavoruritecontainer({
    super.key,
    required this.productname,
    required this.productValum,
    required this.productPrice,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 140,
                child: Image.network(
                  productImage,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                height: 120,
                width: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    Column(
                      children: [
                        SizedBox(
                          height:60,
                          child: CustomText(
                              text: productname,
                              // ignore: prefer_const_constructors

                              weight: FontWeight.bold,alignment: Alignment.topLeft,
                              fontsize: 18),
                        ),
                        CustomText(
                          text: productPrice,
                        fontsize: 20,
                        ),
                      ],
                    ),


                  ],
                ),
              ),
              const SizedBox(width: 30,),
              const Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [


                  Icon(
                    Icons.favorite,
                    size: 28,
                    color: ColorApp.red,
                  ),


                ],
              ),
            ],
          ),const Divider(
            color: Colors.grey,
          ),
        ],

      ),
    );
  }
}
