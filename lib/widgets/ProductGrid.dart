
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/Porducts_Provider.dart';

import 'Product_item.dart';

class ProductGrid extends StatelessWidget {

  final bool showFav ;

  ProductGrid(this.showFav);

  @override
  Widget build(BuildContext context) {

    final productProvider = Provider.of<Products>(context);

    final products = showFav ? productProvider.favoriteItems : productProvider.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
