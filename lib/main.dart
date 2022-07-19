import 'package:clubhouse/screens/user_Auth.dart';
import 'package:clubhouse/screens/welcome_screen.dart';
import 'package:clubhouse/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/room_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:  AppColors.lightColor,
        ),
      scaffoldBackgroundColor: AppColors.lightColor   ,
      //  primaryColor: Colors.white,
     //   accentColor:AppColors.accentColor,
        iconTheme: IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: RoomScreen(),
    );
  }
}
