import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/view/widget/auth/custom_text.dart';
import '../../../core/constant/constant.dart';

// ignore: must_be_immutable
class DetailsWidget extends StatefulWidget {
  String imagename, productname, productprice, productdescription;

  DetailsWidget({
    super.key,
    required this.imagename,
    required this.productname,
    required this.productprice,
    required this.productdescription,
  });

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Expanded(
              child: Image.network(
                widget.imagename,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: widget.productname,
                  fontsize: 18,
                  color: blue,
                  // weight: FontWeight.w800,
                ),
                SizedBox(
                  child: CustomText(
                      text: widget.productdescription,
                      alignment: Alignment.centerLeft,
                      maxLines: 6,
                      fontsize: 16,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const CustomText(
                      text: 'Total',
                      color: Colors.teal,
                      fontsize: 20,
                    ),
                    const SizedBox(
                      width: 220,
                    ),
                    Text(
                      '${widget.productprice} EGP',
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
