import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/ui/food_page/foods_page.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem({this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => FoodPage(category: category,)));

        // other way push screen
        Navigator.pushNamed(context, FoodPage.ROUTER_NAME,arguments: {'category' : category});
      },
      splashColor: Colors.amber,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              category.content,
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: category.color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
