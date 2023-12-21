import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';


ThemeData appTheme() {
  return ThemeData(

    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryTextTheme: TextTheme(
      headline1: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.w900),
      headline2: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w900),
      headline3: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
      headline4: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
      headline5: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
      headline6: TextStyle(fontSize: 14, color: Colors.black,),
      subtitle1: TextStyle(fontSize: 16, color: Colors.black,),
      subtitle2: TextStyle(fontSize: 16, color: Colors.black,),
      bodyText1: TextStyle(fontSize: 16, color: Colors.black,),
      bodyText2: TextStyle(fontSize: 14, color: Colors.black,),
      button: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
    ),

    fontFamily: "Jannah",
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          height: 1.3,
          fontSize: 22,
          fontFamily: "Jannah",
          color: Colors.black,
          fontWeight: FontWeight.bold),
    ),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: HexColor('#922B21'),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        titleTextStyle: TextStyle(
            fontFamily: "Jannah",
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500)),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.lightScaffoldBackgroundColor,
        elevation: 0 ,

        selectedIconTheme: IconThemeData(
          color:Colors.green,
        ),
        unselectedIconTheme:  IconThemeData(
          color: Colors.black,
        ),

        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black
    ),



    //fontFamily: 'jannah',
  );
}



