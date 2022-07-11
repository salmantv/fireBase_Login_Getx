import 'package:get/get.dart';

import '../../addindgData/controllers/addindg_data_controller.dart';
import '../../home/controllers/home_controller.dart';

class ButtonnavigationController extends GetxController {
  int updatedvalue = 0;
  final home = Get.put(HomeController());
  final itemcontroller = Get.put(AddindgDataController());

  buttonnavigationcontroll(index) async {
    updatedvalue = index;
    await home.gatdate();
    await itemcontroller.fetchRecdes();
    update();
  }
}
