import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_template/common/index.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Column(
      children: [
        Center(
          child: Text("SplashPage - ${ConfigService.to.version}"),
        ),
        Center(
          child: Text("value --> ${LocaleKeys.loginTitle.tr}"),
        ),
        ElevatedButton(
            onPressed: () {
              Get.toNamed('system_login');
            },
            child: const Text("Test Page"))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("splash")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
