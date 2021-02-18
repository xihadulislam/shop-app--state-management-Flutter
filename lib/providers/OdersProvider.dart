import 'package:flutter/foundation.dart';
import 'package:shop_app/providers/CartProvider.dart';

class Order {
  final String id;
  final double amount;
  final List<Cart> products;
  final DateTime dateTime;

  Order(
      {@required this.id,
      @required this.amount,
      @required this.products,
      @required this.dateTime});
}

class OrdersProvider with ChangeNotifier {
  List<Order> _orders = [];

  List<Order> get orders {
    return [..._orders];
  }

  void addOrder(List<Cart> products, double amount) {
    _orders.insert(
        0,
        Order(
            id: DateTime.now().toString(),
            amount: amount,
            products: products,
            dateTime: DateTime.now()));
    notifyListeners();
  }
}
