import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../database/cart_database.dart';
import '../model/cart_product_model.dart';

class CartViewModel extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);
  List<CartProductModel> _cartProductmodel = [];

  List<CartProductModel> get cartProductmodel => _cartProductmodel;

  double ?get totalPrice => _totalPrice;
  double ?_totalPrice = 0.0;

  CartViewModel() {
    getAllProduct();
  }

  getAllProduct() async {
    _loading.value = true;

    var dbHelper = CartDatabase.db;
    _cartProductmodel = await dbHelper.getAllProduct();

    print(_cartProductmodel.length);

    _loading.value = false;
    update();
  }

  addProduct(CartProductModel cartProductModel) async {
    if (_cartProductmodel.length == 0) {
      var dbHelper = CartDatabase.db;
      await dbHelper.insert(cartProductModel);
      _cartProductmodel.add(cartProductModel);
    } else {
      for (int i = 0; i >= _cartProductmodel.length; i++) {
        if (_cartProductmodel[i].productId == cartProductModel.productId) {
          return;
        }
      }
      var dbHelper = CartDatabase.db;
      await dbHelper.insert(cartProductModel);
      _cartProductmodel.add(cartProductModel);
    }


    update();
  }


}
