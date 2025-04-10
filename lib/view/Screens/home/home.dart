import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/model/details/details.dart';
import 'package:store/view/widget/home/banners_view.dart';
import 'package:store/view/widget/home/header%20of%20category.dart';
import 'package:store/view/widget/home/product_cont.dart';
import 'package:store/view/widget/home/search_count.dart';
import '../../../view_model/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            left: 8,
            right: 8,
            top: MediaQuery.of(context).size.height / 20,
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              const SearchContainer(),
                SizedBox( height: MediaQuery.of(context).size.height/50,),
              BannersView(),
              CategoryHeader(
                title: "Laptops",
                onPress: (() {}),
              ),
              categoryOfLaptops(),
              CategoryHeader(
                title: "Phone",
                onPress: (() {}),
              ),
              categoryOfMobile(),
              BannersView(),
              CategoryHeader(
                title: "Monitor",
                onPress: (() {}),
              ),
              categoryOfMonitor(),
              CategoryHeader(
                title: "Appliances",
                onPress: (() {}),
              ),
              categoryOfAppliances(),
              BannersView(),
              CategoryHeader(
                title: "HeadPhoneProducts",
                onPress: (() {}),
              ),
              categoryOfHeadPhoneProducts(),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget categoryOfLaptops() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => SizedBox(
            height: 235,
            child: ListView.builder(
                itemCount: controller.productModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      productText: '${controller.productModel[index].name}',
                      productPrice: '${controller.productModel[index].price}',
                      productImage: '${controller.productModel[index].image}',
                      onPress: () => Get.to(Details(
                            model: controller.productModel[index],
                          )),
                      additme: () {});
                }),
          ));
}

Widget categoryOfMobile() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => SizedBox(
            height: 235,
            child: ListView.builder(
                itemCount: controller.phoneProductModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      productText:
                          '${controller.phoneProductModel[index].name}',
                      productPrice:
                          '${controller.phoneProductModel[index].price}',
                      productImage:
                          '${controller.phoneProductModel[index].image}',
                      onPress: () => Get.to(Details(
                            phoneModel: controller.phoneProductModel[index],
                          )),
                      additme: () {});
                }),
          ));
}

Widget categoryOfMonitor() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => SizedBox(
            height: 235,
            child: ListView.builder(
                itemCount: controller.monitorProductModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      productText:
                          '${controller.monitorProductModel[index].name}',
                      productPrice:
                          '${controller.monitorProductModel[index].price}',
                      productImage:
                          '${controller.monitorProductModel[index].image}',
                      onPress: () => Get.to(Details(
                            monitorModel: controller.monitorProductModel[index],
                          )),
                      additme: () {});
                }),
          ));
}

Widget categoryOfAppliances() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => SizedBox(
            height: 235,
            child: ListView.builder(
                itemCount: controller.monitorProductModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      productText:
                          '${controller.AppliancesProductModel[index].name}',
                      productPrice:
                          '${controller.AppliancesProductModel[index].price}',
                      productImage:
                          '${controller.AppliancesProductModel[index].image}',
                      onPress: () => Get.to(Details(
                            appliancesModel:
                                controller.AppliancesProductModel[index],
                          )),
                      additme: () {});
                }),
          ));
}

Widget categoryOfHeadPhoneProducts() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => SizedBox(
            height: 235,
            child: ListView.builder(
                itemCount: controller.HeadphoneProduct.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      productText: '${controller.HeadphoneProduct[index].name}',
                      productPrice:
                          '${controller.HeadphoneProduct[index].price}',
                      productImage:
                          '${controller.HeadphoneProduct[index].image}',
                      onPress: () => Get.to(Details(
                            headphoneModel: controller.HeadphoneProduct[index],
                          )),
                      additme: () {});
                }),
          ));
}

class SliverDelegate extends SliverPersistentHeaderDelegate {
  Widget child;
  SliverDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != 70 ||
        oldDelegate.minExtent != 70 ||
        child != oldDelegate.child;
  }
}
