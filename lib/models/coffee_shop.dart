import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends  ChangeNotifier{
  // coffee for sale list
  final List<Coffee> _shop = [
    Coffee(name: "Boba Tea", price: "3.40", imagePath: "lib/images/bubble-tea.png"),
    Coffee(name: "Americano", price: "1.50", imagePath: "lib/images/coffee-cup.png"),
    Coffee(name: "Latte", price: "4.80", imagePath: "lib/images/latte-art.png"),
    Coffee(name: "Espresso", price: "2.60", imagePath: "lib/images/tea.png"),
  ];

  // user cart
  List<Coffee> _userCart = [];
  // get coffee list
  List<Coffee> get coffeeShop => _shop;
  // get user cart
  List<Coffee> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }
  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}