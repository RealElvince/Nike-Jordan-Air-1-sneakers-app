import 'package:flutter/widgets.dart';
import 'package:snkrs_app/models/nike_shoe.dart';

class CartShoe extends ChangeNotifier {
  // list of shoes  for sale
  final List<NikeShoe> _shoeShop = [
    NikeShoe(
        shoeName: 'Nike Jordan Air',
        shoePrice: '4599',
        shoeDescription:
            'Quality Design Nike Jordan Air 1 mid SE green ✓ Sneakers.',
        shoeImagePath: 'images/green2.png'),
    NikeShoe(
        shoeName: 'Nike Jordan Air ',
        shoePrice: '4599',
        shoeDescription:
            'Quality Design Nike Jordan Air 1 mid SE yellow ✓ Sneakers.',
        shoeImagePath: 'images/yellow2.png'),
    NikeShoe(
        shoeName: 'Nike Jordan Air',
        shoePrice: '4599',
        shoeDescription:
            'Quality Design Nike Jordan Air 1 mid SE teal ✓ Sneakers',
        shoeImagePath: 'images/green1.png'),
    NikeShoe(
        shoeName: 'Nike Jordan Air ',
        shoePrice: '4599',
        shoeDescription:
            'Quality Design Nike Jordan Air 1 mid SE red ✓ Sneakers.',
        shoeImagePath: 'images/red.png')
  ];

  //list of items in user cart

  List<NikeShoe> userCart = [];

  //get the list of shoes for sale
  List<NikeShoe> getShoeList() {
    return _shoeShop;
  }

  // get the shoe cart
  List<NikeShoe> getUserCart() {
    return userCart;
  }

  // add item in the cart

  addItemToCart(NikeShoe nikeShoe) {
    userCart.add(nikeShoe);
    notifyListeners();
  }

  // remove item from the cart
  removeItemCart(NikeShoe nikeshoe) {
    userCart.remove(nikeshoe);
    notifyListeners();
  }
}
