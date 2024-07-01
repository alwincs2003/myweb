import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myweb/core/constant/colorconstant.dart';
import 'package:myweb/presenation/home_screen/view/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                bodyLarge: TextStyle(color: bodyTextColor),
                bodyMedium: TextStyle(color: bodyTextColor),
              ),
        ),
        home: HomeScreen());
  }
}
