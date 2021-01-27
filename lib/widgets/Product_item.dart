import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          leading: IconButton(icon:  Icon(Icons.favorite),onPressed: (){},color: Theme.of(context).accentColor),
          trailing: IconButton(icon:  Icon(Icons.shopping_cart),onPressed: (){},color: Theme.of(context).accentColor,)
        ),
      ),
    );
  }
}
