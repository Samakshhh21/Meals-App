import 'package:flutter/material.dart';
import 'package:meals_app/models/dummy.dart';
import 'package:meals_app/widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
           padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 3 / 2,
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          children: Dummy_Categories.map(
                  (item) => CategoryItem(title: item.title, color: item.color, id: item.id,))
              .toList()),
    );
  }
}
