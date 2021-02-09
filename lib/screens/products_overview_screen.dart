import 'package:flutter/material.dart';
import 'file:///E:/xihad/z-demo/shop_app/lib/providers/Product.dart';
import 'package:shop_app/widgets/ProductGrid.dart';
import 'package:shop_app/widgets/Product_item.dart';

class ProductsOverViewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Shop"),
        ),
        body: ProductGrid()

    );
  }
}
