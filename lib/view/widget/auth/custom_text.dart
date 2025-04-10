import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontsize;
  final Color color;
  final Alignment alignment;
  final FontWeight weight;
  final int maxLines;
  const CustomText({
    super.key,
    this.text = '',
    this.fontsize,
    this.color = Colors.black,
    this.weight = FontWeight.normal,
    this.alignment = Alignment.topLeft,
    this.maxLines = 1,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        maxLines:maxLines ,
          overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: fontsize,
          color: color,
          fontWeight: weight,
          fontFamily: GoogleFonts.athiti().fontFamily,
        ),
      ),
    );
  }
}
