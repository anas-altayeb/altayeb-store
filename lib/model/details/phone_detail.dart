// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/view/widget/auth/custom_text.dart';
import '../control_view.dart';
import '../product_model.dart';
import '../../view_model/cart_viewmodel.dart';
import '../../view_model/home_view_model.dart';

// ignore: must_be_immutable
class PhoneDetail extends StatelessWidget {
  PhoneProductModel? model;
  PhoneDetail({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                leading: GestureDetector(
                  onTap: () => Get.off(ControlView()),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: SizedBox(
                        height: 250,
                        width: 220,
                        child: Image.network(
                          '${model?.image}',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              SizedBox(
                                width: 300,
                                child: CustomText(
                                    text: '${model?.name}',
                                    fontsize: 22,
                                    weight: FontWeight.bold),
                              ),
                              Text(
                                '${model?.price}',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              CustomText(
                                text: 'Product Detail',
                                fontsize: 20,
                                weight: FontWeight.bold,
                              ),
                              SizedBox(
                                width: 220,
                              ),
                              Icon(
                                Icons.favorite_outline,
                                size: 25,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            '${model?.description}',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Review',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: 400,
                            height: 60,
                            child:  GetBuilder<CartViewModel>(
                              init: CartViewModel(),
                builder: (controller) =>
                    ElevatedButton(
                      // ignore: sort_child_properties_last
                        child: Text(
                          'Add To Basket',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primarycolor),
                        onPressed: () {
                        }),
              ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
