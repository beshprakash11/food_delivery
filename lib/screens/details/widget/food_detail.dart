import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Food details'),
    );
  }
}