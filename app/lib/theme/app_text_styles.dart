import 'package:flutter/material.dart';
import '../common/constants/app_strings.dart';

class AppTextStyles {
  static TextStyle regular({double? size, Color? color}) {
    return TextStyle(
      fontFamily: AppStrings.fontFileRegular,
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle medium({double? size, Color? color}) {
    return TextStyle(
      fontFamily: AppStrings.fontFileMedium,
      fontWeight: FontWeight.w500,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle semiBold({double? size, Color? color}) {
    return TextStyle(
      fontFamily: AppStrings.fontFileSemiBold,
      fontWeight: FontWeight.w600,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle bold({double? size, Color? color}) {
    return TextStyle(
      fontFamily: AppStrings.fontFileBold,
      fontWeight: FontWeight.w700,
      fontSize: size,
      color: color,
    );
  }
}
