import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/fakeData.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/ui/food_page/detail_food_page.dart';

class FoodPage extends StatelessWidget {
  static const String ROUTER_NAME = "/FoodPage";
  Category category;

  FoodPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    List<Food> listFood =
        FAKE_FOODS.where((food) => food.categoryId == category.id).toList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Menu\'s ${category.content}'),
      ),
      body: Center(
        child: listFood.length > 0 ? ListView.builder(
            itemCount: listFood.length,
            itemBuilder: (context, index) {
              Food food = listFood[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, DetailFoodPage.ROUTER_NAME,arguments: {'food' : food});
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        clipBehavior: Clip.hardEdge,
                        child: Center(
                          child: FadeInImage.assetNetwork(
                              placeholder: 'assets/images/loading.gif',
                              image: food.urlName),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 30,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.timer,
                              color: Colors.white,
                              size: 26,
                            ),
                            Text(
                              "${food.duration.inMinutes} minutes",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 30,
                      top: 30,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.all(5),
                          child: Text(
                              "${food.complexity.toString().split('.').last}")),
                    ),
                    Positioned(
                      right: 30,
                      bottom: 30,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.all(5),
                          child: Text("${food.name}",style: TextStyle(color: Colors.white),)),
                    )
                  ],
                ),
              );
            }) :
        Text('No Food Found'),
      ),
    );
  }
}
