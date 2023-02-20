import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;
  FoodList(this.selected, this.callback, this.restaurant);
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        itemBuilder: itemBuilder, 
        separatorBuilder: separatorBuilder, 
        itemCount: itemCount
      ),
    );
  }
}