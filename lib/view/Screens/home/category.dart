// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/widget/home/Category_cont.dart';
import 'package:store/view/widget/home/search_count.dart';
import '../../../view_model/home_view_model.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              const SearchContainer(),
              category(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget category() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => SizedBox(
            height: 700,
            child: GridView.builder(
                itemCount: controller.categoryModel.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return CategoryContainer(
                      productText: '${controller.categoryModel[index].name}',
                      onPress: () {},
                      productImage: '${controller.categoryModel[index].image}',
                      additme: () {});
                }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),),
          ));
}
