import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabMargin: const EdgeInsets.only(top: 5),
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.orange,
        tabBackgroundColor: Colors.grey.shade800,
        gap: 8,
        onTabChange: (value) {
          print(value);
        },
        tabs: const [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.favorite_rounded, text: 'Favoriler'),
          GButton(icon: Icons.search, text: 'Arama'),
          GButton(icon: Icons.settings, text: 'Ayarlar'),
        ],
      ),
    );
  }
}
