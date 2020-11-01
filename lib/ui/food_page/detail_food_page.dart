import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class DetailFoodPage extends StatelessWidget {
  static const String ROUTER_NAME = "/DetailFoodPage";
  Food food;

  DetailFoodPage({this.food});

  @override
  Widget build(BuildContext context) {
    Map<String, Food> arguments = ModalRoute.of(context).settings.arguments;
    this.food = arguments['food'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("This is detail ${food.name}"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: "assets/images/loading.gif", image: food.urlName),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Text("Ingredients"),
          Expanded(
            child: ListView.builder(
                itemCount: food.ingredients.length,
                itemBuilder: (context, index) {
                  String name = food.ingredients[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text("#${index+1}")),
                    title: Text("$name"),
                  );
                }),
          )
        ],
      ),
    );
  }
}
