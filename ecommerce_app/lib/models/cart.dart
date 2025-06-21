import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "BMX Peak",
      price: "349,99",
      imagePath: "assets/images/shoes/vansBmxPeak.webp",
      description:
          "A special edition BMX Peak, designed and street tested by Lewis Mills.",
    ),
    Shoe(
      name: "BMX Style 114",
      price: "274,99",
      imagePath: "assets/images/shoes/vansBmxStyle114.webp",
      description: "Made specifically with BMX in mind.",
    ),
    Shoe(
      name: "Skate Sk8-hi",
      price: "399,99",
      imagePath: "assets/images/shoes/vansSkateSk8hi.webp",
      description: "Ultra-resistant interior for skateboarding.",
    ),
    Shoe(
      name: "Skate Wayvee",
      price: "489,99",
      imagePath: "assets/images/shoes/vansSkateWayvee.webp",
      description:
          "Stand out from the rest and outdo yourself. Vans Skateboarding proudly presents Wayvee.",
    ),
    Shoe(
      name: "Ultrarange Rapidweld",
      price: "699,99",
      imagePath: "assets/images/shoes/vansUltrarangeRapidweld.webp",
      description: "Adventure ready. Anywhere, anytime.",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
