
import 'package:flutter/cupertino.dart';

class Food{
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  String score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;
  Food(
    this.imgUrl,
    this.desc, 
    this.name, 
    this.waitTime,
    this.score, 
    this.cal, 
    this.price,
    this.quantity,
    this.ingredients,
    this.about,
    {this.hightLight = false}
  );
}