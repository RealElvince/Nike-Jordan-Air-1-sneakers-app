import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snkrs_app/pages/home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120.0,
              ),
              //logo
              Image.asset(
                'images/nikedesignlogo.png',
                height: 250.0,
              ),

              const SizedBox(height: 20.0),
              // just do it text
              Text(
                'Just Do It!',
                style: GoogleFonts.aBeeZee(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),

              const SizedBox(
                height: 10.0,
              ),
              // intro text
              Text(
                'Your Ultimate Sneaker Source ,Explore,buy and unlock the best Nike Jordan Air sneakers!',
                style: GoogleFonts.aBeeZee(fontSize: 16.0, color: Colors.white),
              ),
              const SizedBox(height: 100.0),
              //Button shop now

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Shop Now',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
