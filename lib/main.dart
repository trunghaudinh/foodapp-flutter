import 'package:flutter/material.dart';
import 'package:food_app/ui/category/category_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Food App'),),
        body: SafeArea(
          child: CategoryView(),
        ),
      ),
    );
  }
}
