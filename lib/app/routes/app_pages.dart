import 'package:firebase/app/modules/addindgData/views/addindg_data_view.dart';
import 'package:firebase/app/modules/buttomNavagtion/bindings/buttom_navagtion_binding.dart';
import 'package:firebase/app/modules/upadatePage/bindings/upadate_page_binding.dart';
import 'package:get/get.dart';

import '../modules/Authincation/bindings/authincation_binding.dart';
import '../modules/Authincation/views/authincation_view.dart';
import '../modules/addindgData/bindings/addindg_data_binding.dart';
import '../modules/buttomNavagtion/views/buttom_navagtion_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loginPage/bindings/login_page_binding.dart';
import '../modules/loginPage/views/login_page_view.dart';
import '../modules/singUpPage/bindings/sing_up_page_binding.dart';
import '../modules/singUpPage/views/sing_up_page_view.dart';
import '../modules/upadatePage/views/upadate.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTHINCATION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => SignupPage(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.SING_UP_PAGE,
      page: () => SingUpPageView(),
      binding: SingUpPageBinding(),
    ),
    GetPage(
      name: _Paths.UPADATE_PAGE,
      page: () => UpadatePageView(),
      binding: UpadatePageBinding(),
    ),
    GetPage(
      name: _Paths.BUTTOM_NAVAGTION,
      page: () => ButtonnavigationView(),
      binding: ButtonnavigationBinding(),
    ),
    GetPage(
      name: _Paths.ADDINDG_DATA,
      page: () => AddindgDataView(),
      binding: AddindgDataBinding(),
    ),
    GetPage(
      name: _Paths.AUTHINCATION,
      page: () => AuthincationView(),
      binding: AuthincationBinding(),
    ),
  ];
}
