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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resturaant.name,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(resturaant.waitTime),
                      Text(resturaant.distance),
                      Text(resturaant.label)
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}