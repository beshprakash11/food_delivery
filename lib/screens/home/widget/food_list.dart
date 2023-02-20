import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;
  FoodList(this.selected, this.callback, this.restaurant);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('List'),
    );
  }
}