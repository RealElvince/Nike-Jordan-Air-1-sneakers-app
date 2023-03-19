import 'package:flutter/material.dart';
import 'package:snkrs_app/models/cart_shoe.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snkrs_app/models/mycart_item.dart';
import 'package:snkrs_app/models/nike_shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartShoe>(
      builder: ((context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'My Cart',
                style: GoogleFonts.aBeeZee(
                  fontSize: 17.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      // get individual shoe list
                      NikeShoe individualshoe = value.getUserCart()[index];
                      // return cart item
                      return MyCartItem(
                        nikeshoe: individualshoe,
                      );
                    }),
              ),
              Container(
                height: 60.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black,
                ),
                child: Text(
                  'Proceed to Payment',
                  style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
