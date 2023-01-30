
import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.blue;
  static final ThemeData lightTheme = ThemeData.light().copyWith(

      primaryColor: primary,
      appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 2,
      ),
      textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( foregroundColor: primary)
       )
  );

  static final ThemeData darkTheme =  ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 2,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( foregroundColor: primary)
    )
  );

  //TextButton Theme
 

    
}