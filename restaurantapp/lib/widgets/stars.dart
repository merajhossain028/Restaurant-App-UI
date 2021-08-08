import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final int rating;
  Stars(this.rating);
  @override
  Widget build(BuildContext context) {
    String star = '';
    for (var i = 0; i < rating; i++) {
      star += '⭐ ';
    }
    return Text(
      star,
      style: TextStyle(
        fontSize: 10,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
