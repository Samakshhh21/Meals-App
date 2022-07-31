import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/screens/item_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String ImageUrl;
  Complexity complexity;
  final int Duration;
  Affordability affordability;
  MealItem(
      {required this.id,
      required this.title,
      required this.ImageUrl,
      required this.complexity,
      required this.Duration,
      required this.affordability});

  String get complexy {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Hard:
        return 'Hard';
      default:
        return 'Challenging';
    }
  }

  String get affordy {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.Pricey:
        return 'Pricey';
      default:
        return 'Luxurious';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(ItemDetailScreen.RouteName,arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectMeal(context),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          margin: const EdgeInsets.all(15),
          child: Column(children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  child: Image.network(ImageUrl, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 10,
                  right: 15,
                  child: Container(
                    color: Colors.black54,
                    width: 300,
                    child: Text(
                      title,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      Text('$Duration Secs')
                    ],
                  ),
                  Row(
                    children: [const Icon(Icons.work), Text(complexy)],
                  ),
                  Row(
                    children: [const Icon(Icons.currency_pound), Text(affordy)],
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
