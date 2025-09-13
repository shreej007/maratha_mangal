import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme.dart';

class ThemeController extends GetxController {
  var isLightTheme = false.obs;

  ThemeData get currentTheme => lightTheme;
  // ThemeData get currentTheme => isDarkMode.value ? darkTheme : lightTheme;
  // ThemeData get currentTheme => isDarkMode.value ? magentaTheme : turquoiseTheme;

  void toggleTheme() {
    isLightTheme.value = !isLightTheme.value;
    Get.changeTheme(currentTheme);
  }
  static bool isLightAppTheme(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();
    return themeController.currentTheme == lightTheme ?  true : false;
  }
}


