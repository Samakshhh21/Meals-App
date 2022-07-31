import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemDetailScreen extends StatelessWidget {
  static var RouteName = '/ItemDetailScreen';
  @override
  Widget build(BuildContext context) {
    var mealid = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealid),
      ),
      body: Center(
        child: Text('The Meal- $mealid'),
      ),
    );
  }
}
