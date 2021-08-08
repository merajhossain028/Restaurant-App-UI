import 'package:flutter/material.dart';
import 'package:restaurantapp/data/data.dart';

class CartDataScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart(${currentUser.cart})"),
      ),
    );
  }
}
