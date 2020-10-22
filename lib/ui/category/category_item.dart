import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem({this.category});

  @override
  Widget build(BuildContext context) {
    return Container(child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(category.content,style: TextStyle(color: Colors.white,fontSize: 18),)
        ],
      ),
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.circular(10)
      ),
    ));
  }
}
