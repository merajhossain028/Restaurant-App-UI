import 'package:flutter/material.dart';
import 'package:restaurantapp/data/data.dart';
import 'package:restaurantapp/screens/cart_data_screens.dart';
import 'package:restaurantapp/widgets/single_order.dart';
import 'package:restaurantapp/widgets/single_restaurant.dart';

class HomeScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant"),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartDataScreens(),
                ),
              );
            },
            child: Text(
              "Cart(${currentUser.cart})",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  ),
                  hintText: "Search Restaurant or Foods"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "Recent Orders",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders.length,
              itemBuilder: (ctx, i) => SingleOrder(
                food: currentUser.orders[i].food.name,
                restaurant: currentUser.orders[i].restaurant.name,
                datetime: currentUser.orders[i].date,
                imageUrl: currentUser.orders[i].food.imageUrl,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "List of Restaurants",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: restaurants
                  .map(
                    (data) => SingleRestaurant(
                      name: data.name,
                      address: data.address,
                      imageUrl: data.imageUrl,
                      rating: data.rating,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
