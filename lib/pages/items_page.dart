import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:snkrs_app/components/customized_shoetile.dart';
import 'package:snkrs_app/models/cart_shoe.dart';
import 'package:snkrs_app/models/nike_shoe.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  // Function of adding shoe to cart

  void addShoeToCart(NikeShoe nikeshoe) {
    Provider.of<CartShoe>(context, listen: false).addItemToCart(nikeshoe);

    // alert user know successful
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[700],
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Successfully Added!',
              style: GoogleFonts.aBeeZee(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Icon(
              IconlyBold.tick_square,
              size: 45,
            )
          ],
        ),
        content: Text(
          'Kindly check your Cart.',
          textAlign: TextAlign.center,
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CartShoe>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // search bar
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                          ),
                        ),
                        const Icon(
                          IconlyLight.search,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Text description
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  ' We all fly. Once you leave the ground, you fly. Some people fly longer than others-Michael Jordan\'s quote.',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.aBeeZee(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              // Hot Sneaker gallery + see all
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot sneakers gallery',
                      style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 17.0),
                    ),
                    Text(
                      'see all',
                      style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              // list of shoes

              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      // get item from the shoe list
                      NikeShoe nikeshoe = value.getShoeList()[index];

                      return ShoeTile(
                        nikeshoe: nikeshoe,
                        onTap: () => addShoeToCart(nikeshoe),
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Divider(
                  thickness: 2.0,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
