import 'package:flutter/material.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/view/widget/auth/custom_text.dart';

// ignore: must_be_immutable
class CategoryHeader extends StatelessWidget {
  CategoryHeader({super.key, required this.onPress, required this.title});
  String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 90,
          bottom: MediaQuery.of(context).size.height / 90,
          right: MediaQuery.of(context).size.height / 90,
          left: MediaQuery.of(context).size.height / 90,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: title,
              fontsize: 18,
              weight: FontWeight.bold,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: onPress,
                  child:
                      CustomText(text: 'View All', fontsize: 14, color: blue),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: blue,
                  size: 15,
                )
              ],
            )
          ],
        ));
  }
}
