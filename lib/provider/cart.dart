import 'package:flower_app/model/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  double price = 0;

  add(Item product) {
    selectedProducts.add(product);
    price+=product.price.round();
    notifyListeners();
  }

  remove(Item product) {
    selectedProducts.remove(product);
    price-=product.price.round();
    notifyListeners();
  }
}
