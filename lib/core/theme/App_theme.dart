import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/theme/App_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    appBarTheme: AppBarTheme(
      color: AppColors.secondaryLight,
      elevation: 4,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.textLight),
      titleTextStyle: TextStyle(color: AppColors.textLight, fontSize: 20),

      toolbarHeight: 100,
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.primaryLight,
      secondary: AppColors.secondaryLight,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.textLight),
      titleLarge: TextStyle(
        color: AppColors.textLight,
        fontWeight: FontWeight.bold,
      ),
    ),

    // textButtonTheme: TextButtonThemeData(
    //   style: TextButton.styleFrom(
    //     backgroundColor: AppColors.secondaryLight,
    //     foregroundColor: Colors.white,
    //   ),
    // ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
    ),

    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.searchFillLight,
      filled: true,
      hintStyle: TextStyle(color: AppColors.searchHintLight),
      prefixIconColor: AppColors.searchHintLight,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: AppBarTheme(
      color: AppColors.appBarLightColor,
      elevation: 4,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.textLight),
      titleTextStyle: TextStyle(color: AppColors.textDark, fontSize: 20),

      // toolbarHeight: 150,
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryDark,
      secondary: AppColors.secondaryDark,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.appBarDarkColor),
      titleLarge: TextStyle(
        color: AppColors.appBarDarkColor,
        fontWeight: FontWeight.bold,
      ),
    ),

    // textButtonTheme: TextButtonThemeData(
    //   style: TextButton.styleFrom(
    //     backgroundColor: AppColors.secondaryDark,
    //     foregroundColor: Colors.black,
    //   ),
    // ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.appBarLightColor,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.searchFillDark,
      filled: true,
      hintStyle: TextStyle(color: AppColors.searchHintDark),
      prefixIconColor: AppColors.searchHintDark,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
