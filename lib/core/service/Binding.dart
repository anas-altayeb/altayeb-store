// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:store/controller/controller.dart';
import 'package:store/view_model/cart_viewmodel.dart';

import '../../view_model/control_view_model.dart';
import '../../view_model/home_view_model.dart';

class Mybinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => HomeViewModel(), fenix: true);
    Get.lazyPut(() => ControlViewModel(), fenix: true);
    Get.put(() => CartViewModel(),permanent:true);
  }
}
