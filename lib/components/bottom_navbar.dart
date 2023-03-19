import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconly/iconly.dart';

class MyBottomNavBar extends StatelessWidget {
// OnTab change Function
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        color: Colors.grey.shade800,
        // tabActiveBorder: Border.all(color: Colors.grey),
        tabBorderRadius: 16.0,
        activeColor: Colors.black87,
        tabs: const [
          GButton(
            icon: IconlyLight.home,
            text: 'Home',
          ),
          GButton(
            icon: IconlyLight.buy,
            text: 'Cart',
          ),
          GButton(
            icon: IconlyLight.profile,
            text: 'User',
          ),
        ],
      ),
    );
  }
}
