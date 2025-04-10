import 'package:flutter/material.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/view/widget/auth/custom_text.dart';

class ProductContainer extends StatelessWidget {
  final String productText;
  final String productPrice;
  final String productImage;
  final VoidCallback onPress;
  final VoidCallback additme;

  const ProductContainer({
    super.key,
    required this.productText,
    required this.productPrice,
    required this.productImage,
    required this.onPress,
    required this.additme,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 2,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 90),
        child: GestureDetector(
          onTap: onPress,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10,
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                // image: DecorationImage(
                //   fit: BoxFit.fill,
                //   image: NetworkImage(productImage),
                //   colorFilter: ColorFilter.mode(
                //     Colors.black.withOpacity(0.1),
                //     BlendMode.softLight,
                //   ),
                // ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 7,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Image.network(
                            productImage,
                          //  fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      CustomText(
                        text: productText,
                        weight: FontWeight.bold,
                        fontsize: 14,
                        alignment: Alignment.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: productPrice,
                            color: blue,
                            alignment: Alignment.center,
                            fontsize: 12,
                          ),
                          CustomText(
                            text: " EGP",
                            color: blue,
                            alignment: Alignment.center,
                            fontsize: 10,
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
