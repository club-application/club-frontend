import 'package:club_frontend/theme/pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Pallete.backgroundColor,
      elevation: 0,
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: MaterialStateProperty.all(Pallete.onBackgroundColor),
      surfaceTintColor: MaterialStateProperty.all(Pallete.onBackgroundColor),
      hintStyle: MaterialStateProperty.all(
        TextStyle(
          color: Colors.grey,
        ),
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          color: Pallete.whiteColor,
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Pallete.blueColor,
    ),
    buttonTheme: const ButtonThemeData(
        buttonColor: Pallete.greenColor, textTheme: ButtonTextTheme.primary),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Pallete.onBackgroundColor,
      selectedItemColor: Pallete.greenColor,
      unselectedItemColor: Pallete.greyColor,
    ),
    listTileTheme: const ListTileThemeData(
      tileColor: Pallete.onBackgroundColor,
      titleTextStyle: TextStyle(color: Pallete.whiteColor),
      subtitleTextStyle: TextStyle(color: Pallete.greyColor),
    ),
  );
}

class Palette {}
