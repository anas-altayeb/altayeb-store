// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/widget/home/details_widget.dart';
import '../cart_product_model.dart';
import '../control_view.dart';
import '../product_model.dart';
import '../../view_model/cart_viewmodel.dart';
import '../../view_model/home_view_model.dart';

// ignore: must_be_immutable
class HeadPhoneDetail extends StatelessWidget {
  HeadphoneProductModel? model;
  HeadPhoneDetail({super.key, this.model});

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
                DetailsWidget(
                  imagename: '${model?.image}',
                  productname:'${model?.name}' ,
                  productprice: '${model?.price}',
                  productdescription: '${model?.description}',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: SizedBox(
                    width: 400,
                    height: 60,
                    child: GetBuilder<CartViewModel>(
                      init: CartViewModel(),
                      builder: (controller) => ElevatedButton(
                        // ignore: sort_child_properties_last
                          child: const Text(
                            'Add To Basket',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent),
                          onPressed: () {
                            controller.addProduct(
                              CartProductModel(
                                  name: model!.name,
                                  image: model!.image,
                                  quantity: 1,
                                  price: model!.price,
                                  productId: model!.productId),
                            );
                          }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
