import 'package:flutter/material.dart';

import '../../models/food.dart';

class DetilPage extends StatelessWidget {
  final Food food;
  
  DetilPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Detail Pages'),
      ),
    );
  }
}