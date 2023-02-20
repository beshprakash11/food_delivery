import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/screens/details/widget/food_img.dart';
import 'package:food_delivery/widgets/custom_appbar.dart';

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
            CustomAppBar(
              Icons.arrow_back_ios_outlined, 
              Icons.favorite_outlined,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImg(food.imgUrl)
          ],
        ),
      )
    );
  }
}