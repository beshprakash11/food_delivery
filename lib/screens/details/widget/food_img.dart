import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  FoodImg(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,

      child: Stack(children: [
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(

              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: kBackground
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            child: Image.asset(food.imgUrl, fit: BoxFit.cover,),
          ),
        ),

      ]),
    );
  }
}