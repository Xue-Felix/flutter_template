import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// kv离线存储
class Storage {
  // 单例写法
  static final Storage _instance = Storage._internal();
  factory Storage() => _instance;
  late final SharedPreferences _preferences;

  Storage._internal();

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<bool> setJson(String key, Object value) async {
    return await _preferences.setString(key, jsonEncode(value));
  }

  Future<bool> setString(String key, String value) async {
    return await _preferences.setString(key, value);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _preferences.setBool(key, value);
  }

  Future<bool> setList(String key, List<String> value) async {
    return await _preferences.setStringList(key, value);
  }

  String getString(String key) {
    return _preferences.getString(key) ?? '';
  }

  bool getBool(String key) {
    return _preferences.getBool(key) ?? false;
  }

  List<String> getList(String key) {
    return _preferences.getStringList(key) ?? [];
  }

  Future<bool> remove(String key) async {
    return await _preferences.remove(key);
  }
}
