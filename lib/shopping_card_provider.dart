import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier {
  List<String> _shoppingCart = ['Shirt', 'Shoes', 'Pants'];

  int get Count => _shoppingCart.length;
  List<String> get cart => _shoppingCart;

  void addItem(String item) {
    _shoppingCart.add(item);
    notifyListeners();
  }
}
