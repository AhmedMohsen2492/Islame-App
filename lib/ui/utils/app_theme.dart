import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTheme
{
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.accent,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: AppColors.accent,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: AppColors.white,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: TextStyle(
        color: AppColors.accent,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30 ,
        fontWeight: FontWeight.bold ,
        color: AppColors.accent ,
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors.primary,
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.primary,
      thickness: 3,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            AppColors.primary,
          )
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.accent,
      unselectedItemColor: AppColors.white,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: AppColors.primary,
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.white,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: AppColors.white,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: AppColors.accent,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: TextStyle(
        color: AppColors.accent_dark,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30 ,
        fontWeight: FontWeight.bold ,
        color: AppColors.white ,
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors.accent_dark,
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.accent_dark,
      thickness: 3,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            AppColors.accent_dark,
          )
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.accent_dark,
      unselectedItemColor: AppColors.white,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: AppColors.primary_dark,
  );
}