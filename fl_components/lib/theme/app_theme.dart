
import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;
  static final ThemeData lightTheme = ThemeData.light().copyWith(

      primaryColor: primary,
      appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 2,
      ),
  );

  static final ThemeData darkTheme =  ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 2,
    ),
    scaffoldBackgroundColor: Colors.black87
  );

    
}