import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier {
  String currentLocal = "en";
  ThemeMode currentTheme = ThemeMode.light;
  static bool darkModeSwitchValue = false;
  static bool arSwitchValue = false;

  SettingProvider() {
    getLocal();
    getMode();
    notifyListeners();
  }

  void changeCurrentLocal(String newLocale) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("local", newLocale);
    currentLocal = newLocale;
    if (currentLocal == "ar") {
      sharedPreferences.setBool("arSwitchValue", true);
    } else {
      sharedPreferences.setBool("arSwitchValue", false);
    }
    notifyListeners();
  }

  void setCurrentTheme(bool newTheme) async {
    currentTheme = newTheme ? ThemeMode.dark : ThemeMode.light;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("mode", currentTheme == ThemeMode.dark);
    if (currentTheme == ThemeMode.dark) {
      sharedPreferences.setBool("darkModeSwitchValue", true);
    } else {
      sharedPreferences.setBool("darkModeSwitchValue", false);
    }
    notifyListeners();
  }

  Future<void> getLocal() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Object? local = sharedPreferences.get("local");
    if (local != null && local != currentLocal) {
      currentLocal = local.toString();
    }
    arSwitchValue = sharedPreferences.getBool("arSwitchValue") ?? false;
    notifyListeners();
  }

  Future<void> getMode() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Object? mode = sharedPreferences.get("mode");

    if (mode != null && (mode as bool)) {
      currentTheme = ThemeMode.dark;
    } else {
      currentTheme = ThemeMode.light;
    }
    darkModeSwitchValue = sharedPreferences.getBool("darkModeSwitchValue") ?? false;
    notifyListeners();
  }
}
