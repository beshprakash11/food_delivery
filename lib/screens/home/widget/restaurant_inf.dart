import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final resturaant = Restaurant.generateRestaurant();
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Text("Restaurant info"),
    );
  }
}