import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/CartProvider.dart';
import 'package:shop_app/widgets/ProductGrid.dart';
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/badge.dart';

import 'cart_screen.dart';

enum FilterOption { ONLY_FAVORITE, ALL }

class ProductsOverViewScreen extends StatefulWidget {
  @override
  _ProductsOverViewScreenState createState() => _ProductsOverViewScreenState();
}

class _ProductsOverViewScreenState extends State<ProductsOverViewScreen> {
  var _showOnlyFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Shop"),
          actions: [
            Consumer<CartProvider>(
              builder: (ctx, cart, ch) =>
                  Badge(child: ch, value: cart.itemCount.toString()),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: (){
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
              ),
            ),
            PopupMenuButton(
                onSelected: (FilterOption selectValue) {
                  setState(() {
                    if (selectValue == FilterOption.ALL) {
                      _showOnlyFavorite = false;
                    } else {
                      _showOnlyFavorite = true;
                    }
                  });
                },
                icon: Icon(Icons.more_vert),
                itemBuilder: (_) => [
                      PopupMenuItem(
                        child: Text(
                          "All",
                        ),
                        value: FilterOption.ALL,
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Only Favorites",
                        ),
                        value: FilterOption.ONLY_FAVORITE,
                      ),
                    ])
          ],
        ),
        drawer: AppDrawer(),
        body: ProductGrid(_showOnlyFavorite));
  }
}
