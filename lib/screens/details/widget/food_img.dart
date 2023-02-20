import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  FoodImg(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      
      child: Text('Fod imae'),
    );
  }
}