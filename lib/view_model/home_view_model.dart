// ignore_for_file: non_constant_identifier_names, prefer_final_fields, unused_field

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../core/service/home_services.dart';
import '../model/category_model.dart';
import '../model/product_model.dart';

class HomeViewModel extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CategoryModel> get categoryModel => _categoryModel;
  List<CategoryModel> _categoryModel = [];
  List<ProductModel> get productModel => _productModel;
  List<ProductModel> _productModel = [];
  List<PhoneProductModel> get phoneProductModel => _phoneProductModel;
  List<PhoneProductModel> _phoneProductModel = [];
  List<MonitorProduct> get monitorProductModel => _monitorProductModel;
  List<MonitorProduct> _monitorProductModel = [];
  List<AppliancesProduct> get AppliancesProductModel => _appliancesProductModel;
  List<AppliancesProduct> _appliancesProductModel = [];
  List<HeadphoneProductModel> get HeadphoneProduct => _headphoneProduct;
  List<HeadphoneProductModel> _headphoneProduct = [];

  HomeViewModel() {
    getCategory();
    productsFun();
    phoneproductslFun();
    MonitorProductFun();
    AppliancesProductFun();
    HeadphoneFun();
  }
  getCategory() async {
    _loading.value = true;
    HomeService().getCategory().then((value) {
      for (int i = 0; i < value.length; i++) {
        _categoryModel.add(
            CategoryModel.fromJson(value[i].data() as Map<String, dynamic>));
        _loading.value = false;
      }
      update();
    });
  }

  productsFun() async {
    _loading.value = true;
    HomeService().products().then((value) {
      for (int i = 0; i < value.length; i++) {
        _productModel.add(
            ProductModel.fromJson(value[i].data() as Map<String, dynamic>));
        _loading.value = false;
      }
      // ignore: avoid_print
      print(_productModel.length);
      update();
    });
  }

  phoneproductslFun() async {
    _loading.value = true;
    HomeService().phoneproducts().then((value) {
      for (int i = 0; i < value.length; i++) {
        _phoneProductModel.add(PhoneProductModel.fromJson(
            value[i].data() as Map<String, dynamic>));
        _loading.value = false;
      }
      // ignore: avoid_print
      print(_phoneProductModel.length);
      update();
    });
  }

  MonitorProductFun() async {
    _loading.value = true;
    HomeService().monitorproducts().then((value) {
      for (int i = 0; i < value.length; i++) {
        _monitorProductModel.add(
            MonitorProduct.fromJson(value[i].data() as Map<String, dynamic>));
        _loading.value = false;
      }
      update();
    });
  }

  AppliancesProductFun() async {
    _loading.value = true;
    HomeService().appliancesroducts().then((value) {
      for (int i = 0; i < value.length; i++) {
        _appliancesProductModel.add(AppliancesProduct.fromJson(
            value[i].data() as Map<String, dynamic>));
        _loading.value = false;
      }
      update();
    });
  }

  HeadphoneFun() async {
    _loading.value = true;
    HomeService().headphoneproduct().then((value) {
      for (int i = 0; i < value.length; i++) {
        _headphoneProduct.add(HeadphoneProductModel.fromJson(
            value[i].data() as Map<String, dynamic>));
        _loading.value = false;
      }
      update();
    });
  }
}
