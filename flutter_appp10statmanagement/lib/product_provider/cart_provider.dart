import 'package:flutter/cupertino.dart';
import 'package:flutterappp10statmanagement/models/Product.dart';

class CartProvider with ChangeNotifier{
  List<Product> _cartItems=[];
  List <Product> get cartItems => _cartItems;

  void addToCart(Product product){

    _cartItems.add(product);
    notifyListeners();
  }

  void removeAll(){
    _cartItems.clear();
    notifyListeners();
  }

  double get totalPrice {
    double total=0.0;
    _cartItems.forEach(product) {
      total +=product.price;
    }
  }
}