import 'package:flutter/material.dart';
import 'package:snkrs_app/components/bottom_navbar.dart';
import 'package:snkrs_app/components/customized_drawer.dart';
import 'package:snkrs_app/pages/cart_page.dart';
import 'package:snkrs_app/pages/items_page.dart';
import 'package:snkrs_app/pages/user_page.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // item index
  int _selectedIndex = 0;

  // item selected Function
  void selectedItemIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of pages

  final List<Widget> _pages = [
    const ItemPage(),
    const CartPage(),
    const UserPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              IconlyBold.category,
              color: Colors.black87,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => selectedItemIndex(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: const CustomizedListView(),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
