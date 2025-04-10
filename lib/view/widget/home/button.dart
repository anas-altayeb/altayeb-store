import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button({
    super.key,
    required this.title,
    required this.primarycolor,
    required this.onPrimarycolor,
    required this.onPress,
    required this.borderRadius,
    required this.fontWeight,
    required this.fontsize,
    required this.hight,
    required this.width,
  });
  String title;
  Color primarycolor;
  Color onPrimarycolor;
  VoidCallback onPress;
  double borderRadius;
  double hight;
  double width;
  double fontsize;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // primary: primarycolor,
        // onPrimary: onPrimarycolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width,
          vertical: hight,
        ),
        textStyle: TextStyle(
          fontSize: fontsize,
          fontWeight: fontWeight,
        ),
      ),
      onPressed: onPress,
      child: Text(title),
    );
  }
}
