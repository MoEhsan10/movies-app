import 'package:flutter/material.dart';
import 'package:movies/core/utils/colors_manager.dart';

class AppTheme{

  static final ThemeData theme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.black,
      unselectedItemColor: ColorsManager.unSelectedColor,
      selectedItemColor: ColorsManager.selectedColor,
    ),

  );

}