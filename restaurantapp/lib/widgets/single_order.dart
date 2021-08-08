import 'package:flutter/material.dart';

class SingleOrder extends StatelessWidget {
  final String food;
  final String restaurant;
  final String imageUrl;
  final String datetime;
  SingleOrder({
    this.food,
    this.restaurant,
    this.imageUrl,
    this.datetime,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 90,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent.withOpacity(0.2),
              spreadRadius: 1.4,
              blurRadius: 1.4,
              offset: Offset(0, 2),
            ),
          ],
          color: Colors.white
          //border: Border.all(width: 1),
          ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                food,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(restaurant),
              Text(datetime),
            ],
          ),
          Spacer(),
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.greenAccent,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
