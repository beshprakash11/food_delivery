import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/screens/details/widget/food_detail.dart';
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
            FoodImg(food),
            FoodDetail(food)
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),            
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
            ],
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}