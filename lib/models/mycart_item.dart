import 'package:flutter/material.dart';
import 'package:snkrs_app/models/cart_shoe.dart';
import 'package:snkrs_app/models/nike_shoe.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCartItem extends StatefulWidget {
  NikeShoe nikeshoe;
  MyCartItem({super.key, required this.nikeshoe});

  @override
  State<MyCartItem> createState() => _MyCartItemState();
}

class _MyCartItemState extends State<MyCartItem> {
  // Delete item function
  void deleteItem() {
    Provider.of<CartShoe>(context, listen: false)
        .removeItemCart(widget.nikeshoe);
    // remove item dialog

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.grey[700],
              title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Item Removed!',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      IconlyLight.danger,
                      size: 27.0,
                    ),
                  ]),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          height: 100.0,
          decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(15.0)),
          child: ListTile(
            leading: Image.asset(widget.nikeshoe.shoeImagePath),
            title: Text(widget.nikeshoe.shoeName),
            subtitle: Text(widget.nikeshoe.shoePrice),
            trailing: IconButton(
                onPressed: () => deleteItem(),
                icon: const Icon(IconlyBold.delete)),
          ),
        ),
      ],
    );
  }
}
