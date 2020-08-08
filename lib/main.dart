import './theme/colors.dart';
import './screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: MyColors.primaryColor,
          canvasColor: MyColors.backgroundColor1,
          iconTheme: IconThemeData(color: MyColors.subtitleColor, size: 24),
          textTheme: TextTheme(
            subtitle2:
                GoogleFonts.mukta(fontSize: 14, color: MyColors.subtitleColor),
            headline6: GoogleFonts.mukta(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: MyColors.titleColor),
          )),
      home: HomeScreen(),
    );
  }
}
