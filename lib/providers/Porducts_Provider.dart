import 'package:flutter/material.dart';

import 'Product.dart';

class Products with ChangeNotifier{
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
        id: 'p2',
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/61MSZWTT3IL._UY550_.jpg'),
    Product(
      id: 'p3',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://images-na.ssl-images-amazon.com/images/I/51VKrSILAfL.jpg',
    ),
    Product(
        id: 'p4',
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
        'https://media.gq.com/photos/5e6944f74d6be70008ac16c2/master/w_2000,h_1333,c_limit/Uniqlo-U-crew-neck-short-sleeve-T-shirt.jpg'),
    Product(
      id: 'p5',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://ae01.alicdn.com/kf/HTB1MotCIpXXXXcZXFXXq6xXFXXXL/2014-New-arrival-autumn-fashion-Unique-neckline-men-t-shirt-camisa-masculina-long-sleeve-man-tshirts.jpg',
    ),
    Product(
        id: 'p6',
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
        'https://assetscdn1.paytm.com/images/catalog/product/A/AP/APPEYEBOGLER-COSEVE88413F32E363/1601890054864_0..jpg')
  ];


  List<Product> get items {
    return [..._items];
  }


  Product getProductById(String productId){
    return _items.firstWhere((element) => element.id == productId);
  }

  void addProduct(Product value){
    _items.add(value);
        notifyListeners();
  }

}