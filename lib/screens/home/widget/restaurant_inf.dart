import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
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
          _firstRow(resturaant),
          SizedBox(height: 5,),
          _secondRow(resturaant),
        ],
      ),
    );
  }

  Widget _firstRow(Restaurant resturaant) {
    return Row(
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
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text(
                        resturaant.waitTime,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ),
                    SizedBox(width: 10,),
                    Text(
                      resturaant.distance,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.4)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      resturaant.label,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.4)
                      )
                    )
                  ],
                )
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(resturaant.logoUrl, width: 80,),
            ),
          ],
        );
  }

  Widget _secondRow(Restaurant resturaant){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '"${resturaant.desc}"',
          style: TextStyle(
            fontSize: 16,
            
          ),
        ),
        Row(
          children: [
            Icon(Icons.star_outlined, color: kPrimaryColor,),
            Text(
              '${resturaant.score}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 15,)
          ],
        ),
      ],
    );
  }
}