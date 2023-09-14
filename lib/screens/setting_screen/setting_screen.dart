import 'package:flutter/material.dart';
import 'package:freetime_app/utils/custom_colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 1,
        toolbarHeight: 90,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        backgroundColor: Colors.white,
        // backgroundColor: Colors.amber[50]!.withOpacity(0.8),
        title: Row(
          children: [
            SizedBox(
                height: 32,
                width: 32,
                child: Image.asset(
                  "assets/images/icons/settings.png",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 16,
            ),
            Text(
              "Settings",
              style: TextStyle(
                  color: CustomColor.charcoal,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
