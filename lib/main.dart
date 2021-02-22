import 'package:flutter/material.dart';
import 'package:web/Home.dart';
import 'package:services/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    Services(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Run new stories...',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: GoogleFonts.nunitoSans(),
          bodyText1: GoogleFonts.nunitoSans().copyWith(
            fontSize: 16,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
