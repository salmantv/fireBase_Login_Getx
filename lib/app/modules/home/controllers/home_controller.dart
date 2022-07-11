import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/app/data/ueerModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../loginPage/views/login_page_view.dart';

class HomeController extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final CollectionReference profileList =
      FirebaseFirestore.instance.collection("users");
  @override
  void onInit() {
    super.onInit();
    gatdate();
  }

  User? user = FirebaseAuth.instance.currentUser;
  UserModel user_model = UserModel();

  Future gatdate() async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      user_model = UserModel.fromeMap(value.data());
    });
    update();
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    Get.off(SignupPage());
  }
}
