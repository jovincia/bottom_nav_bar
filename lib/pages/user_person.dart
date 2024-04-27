import 'package:bottom_nav_bar/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPerson extends StatelessWidget {
  const UserPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("My Safe Place",
          style: GoogleFonts.calligraffitti(
              fontSize: 50, color: MainColors.brown1)),
    );
  }
}