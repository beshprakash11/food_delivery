import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class FoodQuantity extends StatelessWidget {
  final Food food;
  FoodQuantity(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("food qty"),
    );
  }
}