import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.task),
          GButton(icon: Icons.person_2),
          GButton(icon: Icons.feedback),
          GButton(icon: Icons.dashboard),
        ],
      ),
    );
  }
}