import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class InBoxPage extends StatelessWidget {
  const InBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconlyLight.arrow_left_2,
            color: Colors.black,
          ),
        ),
        title: Text(
          'My inbox',
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70.0,
                ),
                Text(
                  'Please sign in to access this content.',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'If you are not registered just sign in with your email or Facebook account.',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.normal, color: Colors.black),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.only(right: 20.0),
                  alignment: Alignment.center,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
