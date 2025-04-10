import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/Screens/home/Favorurite.dart';
import 'package:store/view/Screens/home/category.dart';
import 'package:store/view/Screens/home/My_Cart.dart';
import 'package:store/view/Screens/home/home.dart';
import '../view/Screens/home/Account.dart';

class ControlViewModel extends GetxController {
  int navigatorValue = 0;

  Widget currentScreen = const HomeScreen();


  void changeSelectedValue(int selectedValue) {
    navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          currentScreen = const HomeScreen();
          break;
        }
      case 1:
        {
          currentScreen = const CategoryScreen();
          break;
        }
      case 2:
        {
          currentScreen =  CartView();
          break;
        }
      case 3:
        {
          currentScreen =  FavoruriteScreen();
          break;
        }
      case 4:
        {
          currentScreen = const AccountScreen();
          break;
        }
    }
    update();
  }
}
