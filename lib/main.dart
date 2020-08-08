import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './screens/playlist_screen.dart';

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
          primaryColor: const Color(0xffD933C3),
          canvasColor: const Color(0xff1c0436),
          iconTheme: IconThemeData(
              color: const Color(0xffd594ee),
              size: 24
          ),
          textTheme: TextTheme(
            subtitle2: GoogleFonts.poppins(
                fontSize: 14 , color: const Color(0xffd594ee)),
            headline6: GoogleFonts.poppins(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          )),
      home: PlaylistScreen(),
    );
  }
}
