import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: primary,
    //appbar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,

    ),
    //text button
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),
    //floating action button theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    
    ),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 0
          ),
    ),
    //Input Decoration Theme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color:primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color:primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color:primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),

    )
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: primary,
    //appbar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    //text button

    scaffoldBackgroundColor: Colors.black
  );

}