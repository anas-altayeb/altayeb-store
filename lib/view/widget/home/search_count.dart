import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/view/Screens/home/search.dart';
import 'package:store/view/widget/auth/custom_text.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(()=>const SearchScreen()),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
        elevation: 10,
        margin: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all( 5),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CustomText(
                text: '   Search Product',
                fontsize: 18,
                color: gry,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: ColorApp.veryred,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Icon(Icons.search, color: white, size: 20),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
