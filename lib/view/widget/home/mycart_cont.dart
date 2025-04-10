// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:store/view/widget/auth/custom_text.dart';

class Mycartcontainer extends StatelessWidget {
  final String productname;
  final String productValum;
  final String productPrice;
  final String productImage;

  const Mycartcontainer({
    super.key,
    required this.productname,
    required this.productValum,
    required this.productPrice,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 130,
        child: Row(children: [
          SizedBox(
            width: 120,
            height: 120,
            child: Image.network(
              productImage,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: productname,
                  // ignore: prefer_const_constructors

                  weight: FontWeight.bold,
                  alignment: Alignment.topLeft,
                  fontsize: 18),
              const SizedBox(
                height: 14,
              ),
              CustomText(
                text: productPrice,
                fontsize: 17,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    child: Row(children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.remove,
                          size: 28,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Center(child: Text('0')),
                      const SizedBox(
                        width: 14,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.add,
                          size: 28,
                          color: Colors.blueAccent,
                        ),
                      ),

                    ]),
                  ),const SizedBox(width: 100,),
                  const Icon(
                    Icons.close,
                    size: 28,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ]));
  }
}
