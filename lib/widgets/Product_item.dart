import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/CartProvider.dart';
import 'package:shop_app/providers/Product.dart';
import 'package:shop_app/screens/Product_Details_Screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,listen: false);
    final cart = Provider.of<CartProvider>(context,listen: false);

    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(ProductDetailsScreen.routeName, arguments: product.id),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: GridTile(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
              title: Text(
                product.title,
                textAlign: TextAlign.center,
              ),
              backgroundColor: Theme.of(context).primaryColor.withAlpha(150),
              leading: Consumer<Product>(
                builder: (ctx, product, _) => IconButton(
                    icon: Icon(product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border),
                    onPressed: () {
                      product.toggleFavoriteStatus();
                    },
                    color: Theme.of(context).accentColor),
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  cart.addItem(product.id, product.title, product.price);
                },
                color: Theme.of(context).accentColor,
              )),
        ),
      ),
    );
  }
}
