import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/view/Screens/home/home.dart';
import 'package:store/view/widget/auth/custom_text.dart';
import '../control_view.dart';
import '../product_model.dart';
import '../../view_model/home_view_model.dart';

// ignore: must_be_immutable
class MonitorDetail extends StatelessWidget {
  MonitorProduct? model;
  MonitorDetail({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                leading: GestureDetector(
                  onTap: () => Get.off(const ControlView()),
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
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: SizedBox(
                        height: 250,
                        width: 300,
                        child: Image.network(
                          '${model?.image}',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
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
                                width: 280,
                                child: CustomText(
                                    text: '${model?.name}',
                                    fontsize: 22,
                                    weight: FontWeight.bold),
                              ),
                              Text(
                                '${model?.price}',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          const Row(
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
                          const SizedBox(
                            height: 17,
                          ),
                          Text(
                            '${model?.description}',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          const Row(
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
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: 400,
                            height: 60,
                            child: ElevatedButton(
                              // ignore: sort_child_properties_last
                              child: const Text(
                                'Add To Basket',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primarycolor),
                              onPressed: () => Get.to(const HomeScreen()),
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
