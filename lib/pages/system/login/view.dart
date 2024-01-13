import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_template/common/index.dart';

import 'index.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Column(
      children: [
        ElevatedButton(
            onPressed: controller.onLanguageSelected,
            child: Text('语言: ${ConfigService.to.locale.toLanguageTag()}')),
        ElevatedButton(
            onPressed: controller.onThemeSelected,
            child: Text(
                "主题 : ${ConfigService.to.isDarkModel ? "Dark" : "Light"}")),
        const Center(
          child: Text("LoginPage"),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      id: "login",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text(LocaleKeys.loginTitle.tr)),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
