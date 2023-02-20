import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';

import '../../models/food.dart';

class DetilPage extends StatelessWidget {
  final Food food;
  
  DetilPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            
          ],
        ),
      )
    );
  }
}