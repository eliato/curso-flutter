
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
      ),
       //elevationButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
       style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: const StadiumBorder(),
            elevation: 10
          ),
    )
  );

  static final ThemeData darkTheme =  ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 2,
    ),
    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( foregroundColor: primary)
    ),

    //floating button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    //elevationButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
       style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: const StadiumBorder(),
            elevation: 10
          ),
    )

  );

  
 

    
}