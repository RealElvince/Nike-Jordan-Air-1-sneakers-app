import 'package:flutter/material.dart';
import 'package:snkrs_app/models/nike_shoe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class ShoeTile extends StatelessWidget {
  // declare NikeShoe class as nikeshoe

  NikeShoe nikeshoe;
  // onTap function
  void Function()? onTap;
  ShoeTile({super.key, required this.nikeshoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      margin: const EdgeInsets.only(left: 20),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image
          ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(nikeshoe.shoeImagePath)),

          // description
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              nikeshoe.shoeDescription,
              style: GoogleFonts.aBeeZee(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          // shoe name + details
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nikeshoe.shoeName,
                      style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    Text(
                      ' ${nikeshoe.shoePrice} \KES',
                      style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: const BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
