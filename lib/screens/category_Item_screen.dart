import 'package:flutter/material.dart';
import 'package:meals_app/models/dummy.dart';
import 'package:meals_app/widgets/item.dart';

import '../models/meals.dart';

class CategoryItemScreen extends StatelessWidget {
  // final String catId;
  // final String catName;
  // CategoryItemScreen({required this.catId, required this.catName});
  static var RouteName = '/categoryItemScreen';

  @override
  Widget build(BuildContext context) {
    var routesarg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final String? catId = routesarg['id'];
    final String? catName = routesarg['title'];
    final List<Meal> list = Dummy_Meals.where(((element) {
      return element.categories.contains(catId);
    })).toList();
    return Scaffold(
        appBar: AppBar(title: Text(catName!)),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return MealItem(
              id: list[index].id,
              ImageUrl: list[index].imageUrl,
              Duration: list[index].duration,
              affordability: list[index].affordability,
              complexity: list[index].complexity,
              title: list[index].title,
            );
          }),
          itemCount: list.length,
        ));
  }
}
