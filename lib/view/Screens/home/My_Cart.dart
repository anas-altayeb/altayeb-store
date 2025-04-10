import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/widget/auth/custom_text.dart';
import 'package:store/view/widget/home/mycart_cont.dart';
import 'package:store/view_model/cart_viewmodel.dart';


class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: SingleChildScrollView(
          child: Column(children: [
          const SizedBox(height: 50,),
          const     CustomText(text: 'My Cart',alignment: Alignment.center,fontsize: 22,weight: FontWeight.bold,),
            GetBuilder<CartViewModel>(
              init: CartViewModel(),
              builder:(controller) =>SizedBox(
                height: 670,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 16,
                        ),
                    itemCount: controller.cartProductmodel.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return  Mycartcontainer(
                        productname:'${controller.cartProductmodel[index].name}',
                        productImage:
                        '${controller.cartProductmodel[index].image}',
                        productPrice: '${controller.cartProductmodel[index].price}',
                        productValum: '1',
                      );
                    }),
              ),
            ),
            GestureDetector(
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
                child: // ignore: sort_child_properties_last
                const Center(
                  child: Text(
                    'Add All To Cart',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              onTap: () {},
            ),

          ]),
        ),
      ),
    );
  }
}
