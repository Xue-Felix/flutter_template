import 'package:flutter/foundation.dart';

/// 常量
class Constants {
  // 服务 api
  static String apiUrl = kReleaseMode ? "" : "https://test.somuseai.com/";

  // 本地存储key
  static const storageLanguageCode = 'language_code';

  // 主题
  static const storageThemeCode = 'theme_code';
}
