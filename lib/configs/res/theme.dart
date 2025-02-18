import 'package:flutter/material.dart';
import 'package:propell/configs/res/colors.dart';

class AppThemes {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.klightWhite,
    scaffoldBackgroundColor: AppColor.klightWhite,
    dialogTheme: DialogTheme(
      backgroundColor: AppColor.klightWhite, // ✅ Correct way
    ),
    appBarTheme: const AppBarTheme(
      surfaceTintColor: AppColor.klightWhite,
      iconTheme: IconThemeData(color: AppColor.kGreen1Color),
      backgroundColor: AppColor.klightWhite,
      foregroundColor: AppColor.klightWhite,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black, fontSize: 18),
      bodyMedium: TextStyle(color: Colors.black87, fontSize: 16),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColor.kPrimary,

    dialogTheme: DialogTheme(
      backgroundColor: AppColor.kPrimary, // ✅ Correct way
    ),
    scaffoldBackgroundColor: AppColor.kPrimary,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: AppColor.kPrimary,
      backgroundColor: AppColor.kPrimary,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColor.kWhiteColor),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.grey[850],
      foregroundColor: Colors.white,
    ),
  );
}
