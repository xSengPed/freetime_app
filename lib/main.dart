import 'package:flutter/material.dart';
import 'package:freetime_app/screens/main_menu.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
      home: MainMenu(),
    );
  }
}
