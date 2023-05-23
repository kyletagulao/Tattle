import 'package:flutter/material.dart';

import 'text_theme.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    primarySwatch: const MaterialColor(0xFFFF5858, <int, Color>{
      50 : Color(0xFFFFA8A8),
      100 : Color(0xFFFF9898),
      200 : Color(0xFFFF8888),
      300 : Color(0xFFFF7878),
      400 : Color(0xFFFF6868),
      500 : Color(0xFFFF5858),
      600 : Color(0xFFFF4848),
      700 : Color(0xFFFF3838),
      800 : Color(0xFFFF2828),
      900 : Color(0xFFFF1818),
    }
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.lightTextTheme,
    primarySwatch: const MaterialColor(0xFFFF5858, <int, Color>{
      50 : Color(0xFFFFA8A8),
      100 : Color(0xFFFF9898),
      200 : Color(0xFFFF8888),
      300 : Color(0xFFFF7878),
      400 : Color(0xFFFF6868),
      500 : Color(0xFFFF5858),
      600 : Color(0xFFFF4848),
      700 : Color(0xFFFF3838),
      800 : Color(0xFFFF2828),
      900 : Color(0xFFFF1818),
    }
    ),
  );

}