import 'package:flutter/material.dart';

class Cart {
  final String id;
  final String title;
  final int quantity;
  final double price;

  Cart(
      {@required this.id,
      @required this.title,
      @required this.price,
      @required this.quantity});
}

class CartProvider with ChangeNotifier {
  Map<String, Cart> _items = {};

  Map<String, Cart> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }


  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void addItem(String productID, String title, double price) {
    if (_items.containsKey(productID)) {
      _items.update(
          productID,
          (value) => Cart(
              id: value.id,
              title: value.title,
              price: value.price,
              quantity: value.quantity + 1));
    } else {
      _items.putIfAbsent(
          productID,
          () => Cart(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              quantity: 1));
    }

    notifyListeners();
  }



}
