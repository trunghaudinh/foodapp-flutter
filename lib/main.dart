import 'package:flutter/material.dart';
import 'package:food_app/ui/category/category_page.dart';
import 'package:food_app/ui/food_page/foods_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/FoodPage': (context) => FoodPage(),
        '/CategoryPage': (context) => CategoryPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Food App'),),
        body: SafeArea(
          child: CategoryPage(),
        ),
      ),
    );
  }
}
