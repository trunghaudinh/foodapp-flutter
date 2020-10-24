import 'dart:math';

import 'package:flutter/cupertino.dart';

class Food {
  int id;
  String name;
  String urlName;
  Duration duration;
  Complexity complexity;
  int categoryId;
  List<String> ingredients = List<String>();

  Food(
      @required this.name,
      @required this.urlName,
      @required this.duration,
      this.complexity,
      this.categoryId,
      this.ingredients){
    this.id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
