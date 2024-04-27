import 'package:bottom_nav_bar/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Sweet Home",
          style: GoogleFonts.calligraffitti(
              fontSize: 50, color: MainColors.brown1)),
    );
  }
}
