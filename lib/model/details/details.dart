// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/model/cart_product_model.dart';
import 'package:store/model/control_view.dart';
import 'package:store/view/widget/home/details_widget.dart';
import 'package:store/view_model/cart_viewmodel.dart';
import '../product_model.dart';
import '../../view_model/home_view_model.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  ProductModel? model;
  PhoneProductModel? phoneModel;
  MonitorProduct? monitorModel;
  AppliancesProduct? appliancesModel;
  HeadphoneProductModel? headphoneModel;

  Details({
    super.key,
    this.model,
    this.phoneModel,
    this.monitorModel,
    this.appliancesModel,
    this.headphoneModel,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  PhoneProductModel? phonemodel;
  bool clik = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                leading: GestureDetector(
                  onTap: () => Get.off(ControlView()),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            clik = true;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            clik = false;
                          });
                        },
                        child: clik == false
                            ? const Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                                size: 25,
                              )
                            : const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 25,
                              )),
                  ),
                ],
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailsWidget(
                      imagename: '${widget.model?.image}',
                      productname: '${widget.model?.name}',
                      productprice: '${widget.model?.price}',
                      productdescription: '${widget.model?.description}',
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, right: 20, left: 20),
                      child: Container(
                        width: 400,
                        height: 60,
                        child: GetBuilder<CartViewModel>(
                          init: CartViewModel(),
                          builder: (controller) => ElevatedButton(
                              // ignore: sort_child_properties_last
                              child: Text(
                                'Add To Basket',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(fontSize: 20),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.teal),
                              onPressed: () {
                                controller.addProduct(
                                  CartProductModel(
                                      name: widget.model!.name,
                                      image: widget.model!.image,
                                      quantity: 1,
                                      price: widget.model!.price,
                                      productId: widget.model!.productId),
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
