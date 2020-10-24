import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/fakeData.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/food.dart';

class FoodPage extends StatelessWidget {
  static const String ROUTER_NAME = "/FoodPage";
  Category category;

  FoodPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    List<Food> listFood = FAKE_FOODS.where((food) => food.categoryId == category.id).toList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Menu\'s ${category.content}'),
      ),
      body: Center(
        // child: ListView.builder(
        //   itemBuilder
        // ),
      ),
    );
  }
}
