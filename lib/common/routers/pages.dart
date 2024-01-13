import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_template/pages/index.dart';

import 'index.dart';

class RoutePages {
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];
  // 列表
  static List<GetPage> list = [
    GetPage(
      name: RouteNames.systemLogin,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RouteNames.systemMain,
      page: () => const MainPage(),
    ),
    GetPage(
      name: RouteNames.systemRegister,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: RouteNames.systemSetting,
      page: () => const SettingPage(),
    ),
    GetPage(
      name: RouteNames.systemSplash,
      page: () => const SplashPage(),
    ),
  ];
}
