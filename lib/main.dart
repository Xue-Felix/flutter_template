import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_template/common/index.dart';
import 'package:flutter_template/pages/global.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ConfigService.to.isDarkModel ? AppTheme.dark : AppTheme.light,

      /*******************  路由 Start ******************/
      initialRoute: RouteNames.systemSplash,
      getPages: RoutePages.list,
      // 路由变化监听
      navigatorObservers: [RoutePages.observer],
      /*******************  路由 End ******************/

      /*******************  多语言 Start ****************/
      translations: Translation(),
      // 代理
      localizationsDelegates: Translation.localizationsDelegates,
      supportedLocales: Translation.supportedLocales,
      locale: ConfigService.to.locale,
      fallbackLocale: Translation.fallbackLocale,
      /*******************  多语言 End ******************/
    );
  }
}
