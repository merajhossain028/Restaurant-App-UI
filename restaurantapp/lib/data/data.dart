import '../models/food.dart';
import '../models/order.dart';
import '../models/restaurant.dart';
import '../models/user.dart';

//Food
final _food_1 =
    Food(imageUrl: 'assets/burger.jpg', name: 'Food 1', price: 55.99);

final _food_2 =
    Food(imageUrl: 'assets/chicken.jpg', name: 'Food 2', price: 44.99);

final _food_3 =
    Food(imageUrl: 'assets/chickenfry.jpg', name: 'Food 3', price: 33.99);

final _food_4 =
    Food(imageUrl: 'assets/desert.jpg', name: 'Food 4', price: 45.99);

final _food_5 =
    Food(imageUrl: 'assets/Luchi.jpg', name: 'Food 5', price: 75.99);

final _food_6 =
    Food(imageUrl: 'assets/pizza.jpg', name: 'Food 6', price: 76.99);

final _food_7 =
    Food(imageUrl: 'assets/prawn.jpg', name: 'Food 7', price: 54.99);

final _food_8 =
    Food(imageUrl: 'assets/rice.jpeg', name: 'Food 8', price: 45.99);

//Restaurants
final _restaurant0 = Restaurant(
  imageUrl: 'assets/restaurant1.jpg',
  name: "Darbar E Kacchi",
  address: "Block# E, Banasree, Dhaka",
  rating: 5,
  menu: [
    _food_1,
    _food_2,
    _food_3,
    _food_4,
    _food_5,
    _food_6,
    _food_7,
    _food_8,
  ],
);

final _restaurant1 = Restaurant(
  imageUrl: 'assets/restaurant2.jpg',
  name: "Khuda Lagse?",
  address: "Block# E, Banasree, Dhaka",
  rating: 5,
  menu: [
    _food_1,
    _food_2,
    _food_3,
    _food_4,
    _food_5,
    _food_6,
    _food_7,
    _food_8,
  ],
);

final _restaurant2 = Restaurant(
  imageUrl: 'assets/restaurant2.jpg',
  name: "Sultans Dine",
  address: "Block# E, Banasree, Dhaka",
  rating: 5,
  menu: [
    _food_1,
    _food_2,
    _food_3,
    _food_4,
    _food_5,
    _food_6,
    _food_7,
    _food_8,
  ],
);

final _restaurant3 = Restaurant(
  imageUrl: 'assets/restaurant2.jpg',
  name: "Tehari Vai",
  address: "Block# E, Banasree, Dhaka",
  rating: 5,
  menu: [
    _food_1,
    _food_2,
    _food_3,
    _food_4,
    _food_5,
    _food_6,
    _food_7,
    _food_8,
  ],
);

final _restaurant4 = Restaurant(
  imageUrl: 'assets/restaurant2.jpg',
  name: "Kacchi House",
  address: "Block# E, Banasree, Dhaka",
  rating: 5,
  menu: [
    _food_1,
    _food_2,
    _food_3,
    _food_4,
    _food_5,
    _food_6,
    _food_7,
    _food_8,
  ],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

//User
final currentUser = User(
  name: "Meraj",
  orders: [
    Order(
      date: 'Noc 10, 2020',
      food: _food_2,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Jan 10, 2021',
      food: _food_1,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Feb 10, 2021',
      food: _food_4,
      restaurant: _restaurant0,
      quantity: 4,
    ),
    Order(
      date: 'Feb 14, 2021',
      food: _food_7,
      restaurant: _restaurant4,
      quantity: 3,
    ),
  ],
);
