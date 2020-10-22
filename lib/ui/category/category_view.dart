import 'package:flutter/material.dart';
import 'package:food_app/fakeData.dart';
import 'package:food_app/models/category.dart';
import 'category_item.dart';
class CategoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      children: FAKE_CATEGORIES.map((eachCategory)=>CategoryItem(category: eachCategory)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
