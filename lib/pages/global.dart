import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_template/common/index.dart';

class Global {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Storage().init();

    // 初始化服务
    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {});
    Get.put<WPHttpService>(WPHttpService());
  }
}
