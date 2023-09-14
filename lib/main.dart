import 'package:flutter/material.dart';
import 'package:freetime_app/screens/main_menu.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainMenu(),
    );
  }
}
