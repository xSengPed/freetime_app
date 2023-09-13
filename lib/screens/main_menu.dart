import 'package:flutter/material.dart';
import 'package:freetime_app/screens/group_screen/group_screen.dart';
import 'package:freetime_app/screens/home_screen/home_screen.dart';
import 'package:freetime_app/screens/setting_screen/setting_screen.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    GroupScreen(),
    SettingScreen(),
  ];

  Expanded NavIcon(int index, {Widget? icon, String label = ""}) {
    return Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: () async {
            final int previousIndex = currentIndex;
            setState(() {
              currentIndex = index;
            });
            if (currentIndex == 2) {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ));

              setState(() {
                currentIndex = previousIndex;
              });

              return;
            }
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color:
                    index == currentIndex ? Colors.blue : Colors.transparent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 32,
                  height: 32,
                  child: icon,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "$label",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color:
                          index == currentIndex ? Colors.white : Colors.black),
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg/bg.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.transparent,
            child: screens[currentIndex],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 10,
                          offset: Offset(1, 10))
                    ]),
                width: double.infinity,
                height: 75,
                child: Row(
                  children: [
                    NavIcon(
                      0,
                      icon: Image.asset("assets/images/icons/user.png"),
                      label: "Home",
                    ),
                    NavIcon(
                      1,
                      icon: Image.asset("assets/images/icons/group.png"),
                      label: "Group",
                    ),
                    NavIcon(
                      2,
                      icon: Image.asset("assets/images/icons/settings.png"),
                      label: "Setting",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
