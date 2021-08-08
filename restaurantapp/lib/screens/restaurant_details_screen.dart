import 'package:flutter/material.dart';
import 'package:restaurantapp/data/data.dart';
import 'package:restaurantapp/models/restaurant.dart';
import 'package:restaurantapp/widgets/single_restaurant_food.dart';
import 'package:restaurantapp/widgets/stars.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  final String name;
  RestaurantDetailsScreen(
    this.name,
  );
  @override
  Widget build(BuildContext context) {
    Restaurant restaurant =
        restaurants.firstWhere((element) => element.name == name);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                restaurant.imageUrl,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 18,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      restaurant.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(restaurant.address),
                  ],
                ),
                Stars(restaurant.rating)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Reviews",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Theme.of(context).primaryColor,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "Menu",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 0,
              ),
              child: GridView.builder(
                itemCount: restaurant.menu.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (ctx, i) => SingleRestaurantFood(
                  imageUrl: restaurant.menu[i].imageUrl,
                  name: restaurant.menu[i].name,
                  price: restaurant.menu[i].price,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
