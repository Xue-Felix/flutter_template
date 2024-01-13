import 'package:get/get.dart';
import 'package:flutter_template/common/index.dart';

class LoginController extends GetxController {
  LoginController();

  _initData() {
    update(["login"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // 多语言
  onLanguageSelected() {
    var zh = Translation.supportedLocales[0];
    var en = Translation.supportedLocales[1];

    ConfigService.to.onLocaleUpdate(
        ConfigService.to.locale.toLanguageTag() == en.toLanguageTag()
            ? zh
            : en);

    update(["login"]);
  }

  // 主题
  onThemeSelected() async {
    await ConfigService.to.switchThemeModel();
    update(["login"]);
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
