import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snkrs_app/pages/inbox_page.dart';

class CustomizedListView extends StatelessWidget {
  const CustomizedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(
              'images/nikedesignlogo.png',
              height: 10.0,
              color: Colors.white,
            ),
          ),
          // Account User
          Expanded(
            child: ListTile(
              title: Text(
                'Hi,Elvo! Welcome back 🤗',
                style: GoogleFonts.aBeeZee(color: Colors.white),
              ),
              subtitle: Text(
                'elvo@gmail.com',
                style: GoogleFonts.aBeeZee(color: Colors.white),
              ),
            ),
          ),
          const Divider(
            thickness: 2.0,
          ),
          // Inbox
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InBoxPage()),
                );
              },
              child: ListTile(
                leading: const Icon(IconlyLight.message, color: Colors.white),
                title: Text(
                  'Inbox',
                  style: GoogleFonts.aBeeZee(color: Colors.white),
                ),
                trailing: const Icon(
                  IconlyLight.arrow_right_2,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 2.0,
          ),
          // about
          Expanded(
            child: ListTile(
              leading: const Icon(IconlyLight.info_circle, color: Colors.white),
              title: Text(
                'About',
                style: GoogleFonts.aBeeZee(color: Colors.white),
              ),
              trailing: const Icon(
                IconlyLight.arrow_right_2,
                color: Colors.white,
              ),
            ),
          ),
          const Divider(
            thickness: 2.0,
          ),
          // view sneakers
          const Expanded(
            child: ListTile(
              leading: Icon(IconlyLight.show, color: Colors.white),
              title: Text(
                'Recently Viewed',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                IconlyLight.arrow_right_2,
                color: Colors.white,
              ),
            ),
          ),
          const Divider(
            thickness: 2.0,
          ),

          // Saved Items
          Expanded(
            child: ListTile(
              leading: const Icon(IconlyLight.heart, color: Colors.white),
              title: Text(
                'Saved Items',
                style: GoogleFonts.aBeeZee(color: Colors.white),
              ),
              trailing: const Icon(
                IconlyLight.arrow_right_2,
                color: Colors.white,
              ),
            ),
          ),
          const Divider(
            thickness: 2.0,
          ),

          // Settings
          Expanded(
            child: ListTile(
              leading: const Icon(IconlyLight.setting, color: Colors.white),
              title: Text(
                'Account Settings',
                style: GoogleFonts.aBeeZee(color: Colors.white),
              ),
              trailing: const Icon(
                IconlyLight.arrow_right_2,
                color: Colors.white,
              ),
            ),
          ),
          const Divider(
            thickness: 2.0,
          ),
          const SizedBox(
            height: 30.0,
          ),
          // log out
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: const Icon(IconlyLight.logout, color: Colors.white),
                title: Text(
                  'Log Out',
                  style: GoogleFonts.aBeeZee(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
