import 'package:firebase/app/modules/buttomNavagtion/controllers/buttom_navagtion_controller.dart';
import 'package:get/get.dart';

class ButtonnavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonnavigationController>(
      () => ButtonnavigationController(),
    );
  }
}
