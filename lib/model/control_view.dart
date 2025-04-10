import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/Screens/auth/sign_in.dart';
import '../controller/controller.dart';
import '../view_model/control_view_model.dart';

class ControlView extends StatelessWidget {
  const ControlView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
    return(
        Get.find<HomeController>().user == null)
        ? SignIn()
        : GetBuilder<ControlViewModel>(
      builder: (controller) => Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  });}

  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      init: ControlViewModel(),
      builder: (controller) => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store,
              color: Colors.black,
              size: 32,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.manage_search_outlined,
              color: Colors.black,
              size: 32,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 32,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              size: 32,
              color: Colors.black,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 32,
              color: Colors.black,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
        elevation: 0,
        selectedItemColor: const Color.fromRGBO(0, 48, 96, 1),
      ),
    );
  }
}
