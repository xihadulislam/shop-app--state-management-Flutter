import 'package:flutter/material.dart';

import 'Product.dart';

class Products with ChangeNotifier{
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Vitamin C Glow Boosting Moisturizer',
      description: 'The Vitamin C Glow Boosting Moisturizer is a fresh, lightweight gel formula that will give your skin a daily boost of radiance and hydration.',
      price: 29.99,
      imageUrl:
      'https://images-na.ssl-images-amazon.com/images/I/71k4QJvn0YL._SL1300_.jpg',
    ),
    Product(
      id: 'p55',
      title: 'Mango Hand Cream 30ml',
      description: 'The Body Shop - Mango Hand Cream 30ml',
      price: 29.99,
      imageUrl:
      'https://www.kikinben.com/pub/media/catalog/product/cache/image/720x660/e9c3970ab036de70892d86c6d221abfe/t/h/the-body-shop-mango-hand-cream_1.jpg',
    ),
    Product(
        id: 'p2',
        title: 'The Body Shop Tea Tree Range',
        description: 'Yet again The Body Shop have brought out new products. I’m enjoying this new direction The Body Shop seems to be taking and I always enjoy seeing what they’ll do next. I previously blogged about their Oils of Life range here and the Drops of Youth range here. The Body Shop has always had tea tree in their range but they’ve added new products to the popular line up. The Body Shop’s tea tree range is designed specifically for people with blemished (that includes black and white heads) and oily skin.',
        price: 59.99,
        imageUrl:
        'https://2.bp.blogspot.com/-mJt13yo3Wqo/V63rPo9MmkI/AAAAAAAAhNI/KslHu-3GTnUxu2O0-evLCSrc8bbiqpoLgCLcB/s1600/thebodyshopteatreerange.jpg'),
    Product(
      id: 'p3',
      title: 'Skin Care Products',
      description: 'Skin Care Products',
      price: 29.99,
      imageUrl:
      'https://cdn11.bigcommerce.com/s-gud7r2x2lu/images/stencil/500x659/products/505/1698/REGENERIST_MICRO-SCULPTING_CREAM_ENVIRONMENT__07229.1563375425.1280.1280__44782.1563972955.1280.1280__15370.1569272542.jpg',
    ),
    Product(
        id: 'p4',
        title: 'POPSUGAR Beauty',
        description: 'Best Products From The Body Shop | POPSUGAR Beauty',
        price: 59.99,
        imageUrl:
        'https://media1.popsugar-assets.com/files/thumbor/97UUezzEc9NNP_SR4FPq-xlBlIM/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/04/20/978/n/40039897/1c1673ea58f93637855806.06185626_3121042/i/Body-Shop-Drops-Youth-Liquid-Peel.JPG'),
    Product(
      id: 'p5',
      title: 'Mango Hand Cream 30ml',
      description: 'The Body Shop - Mango Hand Cream 30ml',
      price: 29.99,
      imageUrl:
      'https://www.kikinben.com/pub/media/catalog/product/cache/image/720x660/e9c3970ab036de70892d86c6d221abfe/t/h/the-body-shop-mango-hand-cream_1.jpg',
    ),
    Product(
        id: 'p6',
        title: 'Body Shop',
        description: 'The 20 Best Products in The Body Shop | Who What Wear UK',
        price: 59.99,
        imageUrl:
        'https://cdn.cliqueinc.com/posts/285787/best-bodyshop-products-285787-1582735718953-product.700x0c.jpg'),

    Product(
        id: 'p222',
        title: 'The Body Shop Tea Tree Range',
        description: 'Yet again The Body Shop have brought out new products. I’m enjoying this new direction The Body Shop seems to be taking and I always enjoy seeing what they’ll do next. I previously blogged about their Oils of Life range here and the Drops of Youth range here. The Body Shop has always had tea tree in their range but they’ve added new products to the popular line up. The Body Shop’s tea tree range is designed specifically for people with blemished (that includes black and white heads) and oily skin.',
        price: 59.99,
        imageUrl:
        'https://2.bp.blogspot.com/-mJt13yo3Wqo/V63rPo9MmkI/AAAAAAAAhNI/KslHu-3GTnUxu2O0-evLCSrc8bbiqpoLgCLcB/s1600/thebodyshopteatreerange.jpg'),
    Product(
        id: 'p44',
        title: 'POPSUGAR Beauty',
        description: 'Best Products From The Body Shop | POPSUGAR Beauty',
        price: 59.99,
        imageUrl:
        'https://media1.popsugar-assets.com/files/thumbor/97UUezzEc9NNP_SR4FPq-xlBlIM/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/04/20/978/n/40039897/1c1673ea58f93637855806.06185626_3121042/i/Body-Shop-Drops-Youth-Liquid-Peel.JPG'),
    Product(
      id: 'p111',
      title: 'Vitamin C Glow Boosting Moisturizer',
      description: 'The Vitamin C Glow Boosting Moisturizer is a fresh, lightweight gel formula that will give your skin a daily boost of radiance and hydration.',
      price: 29.99,
      imageUrl:
      'https://images-na.ssl-images-amazon.com/images/I/71k4QJvn0YL._SL1300_.jpg',
    ),

  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((element) => element.isFavorite).toList();
  }


  Product getProductById(String productId){
    return _items.firstWhere((element) => element.id == productId);
  }

  void addProduct(Product value){
    _items.add(value);
        notifyListeners();
  }

}