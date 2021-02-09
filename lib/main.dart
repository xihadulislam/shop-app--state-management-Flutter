import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/CartProvider.dart';
import 'package:shop_app/providers/Porducts_Provider.dart';
import 'package:shop_app/screens/Product_Details_Screen.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => CartProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop App',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            accentColor: Colors.orangeAccent,
            fontFamily: 'Lato'),
        home: ProductsOverViewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
          CartScreen.routeName: (ctx) => CartScreen()
        },
      ),
    );
  }
}
