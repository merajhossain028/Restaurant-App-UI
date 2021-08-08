import 'package:flutter/material.dart';
import 'package:restaurantapp/screens/restaurant_details_screen.dart';
import 'package:restaurantapp/widgets/stars.dart';

class SingleRestaurant extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String address;
  final int rating;
  SingleRestaurant({
    this.name,
    this.imageUrl,
    this.address,
    this.rating,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 130,
      width: MediaQuery.of(context).size.width,
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
          color: Colors.white),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RestaurantDetailsScreen(name),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imageUrl,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Stars(rating),
              Text(address),
            ],
          ),
        ],
      ),
    );
  }
}
