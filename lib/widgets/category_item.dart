import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_Item_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItem({required this.id, required this.title, required this.color});

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryItemScreen.RouteName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (() => selectCategory(context)),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color.withOpacity(0.5), color],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
              borderRadius: BorderRadius.circular(20)),
          child: Center(child: Text(title)),
        ));
  }
}
