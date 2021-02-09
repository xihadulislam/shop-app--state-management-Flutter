import 'package:flutter/material.dart';
import 'file:///E:/xihad/z-demo/shop_app/lib/providers/Product.dart';
import 'package:shop_app/widgets/ProductGrid.dart';
import 'package:shop_app/widgets/Product_item.dart';

enum FilterOption{
  ONLY_FAVORITE,
  ALL
}

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

            PopupMenuButton(
                onSelected: (FilterOption selectValue){

                  setState(() {
                    if(selectValue == FilterOption.ALL){
                      _showOnlyFavorite = false;
                    }else{
                      _showOnlyFavorite = true;
                    }
                  });
                },
                icon:  Icon(Icons.more_vert)
                ,itemBuilder: (_)=>[
              PopupMenuItem(child: Text("All",),value: FilterOption.ALL,),
              PopupMenuItem(child: Text("Only Favorites",),value: FilterOption.ONLY_FAVORITE,),

            ])

          ],
        ),
        body: ProductGrid(_showOnlyFavorite)

    );
  }
}


