import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  late RxBool isDarkMode;

  @override
  void onInit() {
    super.onInit();

    _loadTheme();
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool savedTheme = prefs.getBool('isDarkMode') ?? true;
    isDarkMode = RxBool(savedTheme);
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  void toggleTheme() async {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode.value);
  }
}
