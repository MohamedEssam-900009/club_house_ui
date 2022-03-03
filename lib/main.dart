import 'package:club_house_ui/constants/colors.dart';
import 'package:club_house_ui/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Club House UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:  AppBarTheme(backgroundColor: kBackground),
        scaffoldBackgroundColor:kBackground,
        primaryColor: Colors.white,
       accentColor: kAccentColorGreen,
        iconTheme:  IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme()
      ),
      home: HomeScreen(),
    );
  }
}
