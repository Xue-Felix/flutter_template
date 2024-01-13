# flutter_template

一个Flutter 开箱即用的模板，基于Getx搭建的MVC架构开发模板

## 项目目录

```bash
├── README.md
├── analysis_options.yaml
├── android
├── assets
│   └── icons
│       └── launcher.png
├── build
├── ios
├── lib
│   ├── common
│   │   ├── api
│   │   │   └── index.dart
│   │   ├── components
│   │   │   └── index.dart
│   │   ├── extension
│   │   │   └── index.dart
│   │   ├── i18n
│   │   │   ├── index.dart
│   │   │   ├── locale_keys.dart
│   │   │   ├── locales
│   │   │   │   ├── locale_en.dart
│   │   │   │   └── locale_zh.dart
│   │   │   └── translation.dart
│   │   ├── index.dart
│   │   ├── models
│   │   │   ├── error_message_model.dart
│   │   │   └── index.dart
│   │   ├── routers
│   │   │   ├── index.dart
│   │   │   ├── names.dart
│   │   │   ├── names.txt
│   │   │   ├── observers.dart
│   │   │   ├── pages.dart
│   │   │   └── pages.txt
│   │   ├── services
│   │   │   ├── config.dart
│   │   │   ├── index.dart
│   │   │   └── wp_http.dart
│   │   ├── style
│   │   │   ├── color_schemes.g.dart
│   │   │   ├── colors.dart
│   │   │   ├── index.dart
│   │   │   ├── radius.dart
│   │   │   ├── space.dart
│   │   │   ├── text.dart
│   │   │   └── theme.dart
│   │   ├── utils
│   │   │   ├── index.dart
│   │   │   ├── loading.dart
│   │   │   └── storage.dart
│   │   ├── values
│   │   │   ├── constants.dart
│   │   │   ├── images.dart
│   │   │   ├── index.dart
│   │   │   └── svgs.dart
│   │   └── widgets
│   │       └── index.dart
│   ├── main.dart
│   └── pages
│       ├── global.dart
│       ├── index.dart
│       ├── index.txt
│       ├── styles
│       └── system
│           ├── login
│           │   ├── controller.dart
│           │   ├── index.dart
│           │   ├── view.dart
│           │   └── widgets
│           ├── main
│           │   ├── controller.dart
│           │   ├── index.dart
│           │   ├── view.dart
│           │   └── widgets
│           ├── register
│           │   ├── controller.dart
│           │   ├── index.dart
│           │   ├── view.dart
│           │   └── widgets
│           ├── setting
│           │   ├── controller.dart
│           │   ├── index.dart
│           │   ├── view.dart
│           │   └── widgets
│           └── splash
│               ├── controller.dart
│               ├── index.dart
│               ├── view.dart
│               └── widgets
├── pubspec.lock
├── pubspec.yaml
├── flutter_template.iml
└── test
    └── widget_test.dart
```
## 说明

- bundleId: com.example.bundleId

> 可以通过 [rename cli](https://pub.dev/packages/rename) 统一修改bundleId
