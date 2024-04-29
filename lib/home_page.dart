import 'package:bottom_nav_bar/colors.dart';
import 'package:bottom_nav_bar/pages/user_home.dart';
import 'package:bottom_nav_bar/pages/user_message.dart';
import 'package:bottom_nav_bar/pages/user_person.dart';
import 'package:bottom_nav_bar/pages/user_settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPosition = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedPosition = index;
    });
  }

  final List<Widget> pages = [
    UserHome(),
    UserMessage(),
    UserPerson(),
    UserSettings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.brownNude,
        title: SizedBox(
          height: 40,
          child: Marquee(
            text: "Made by Dani ♥♥♥♥♥♥♥♥♥",
            style: GoogleFonts.calligraffitti(
              fontSize: 24,
              color: MainColors.white,
             
            ),
          
          ),
        ),
      ),
      body: pages[selectedPosition],
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigateBottomBar,
        currentIndex: selectedPosition,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: MainColors.brown1,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: MainColors.brown1,
            ),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: MainColors.brown1,
            ),
            label: "Personal",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: MainColors.brown1,
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
