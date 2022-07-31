import 'package:flutter/material.dart';
import 'package:meals_app/screens/bottom_tab_screen.dart';
import 'package:meals_app/screens/category_Item_screen.dart';
import 'package:meals_app/screens/category_screen.dart';
import 'package:meals_app/screens/item_detail_screen.dart';
import 'package:meals_app/screens/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Bottom_Tab_Bar(),
      routes: {
        CategoryItemScreen.RouteName: ((context) => CategoryItemScreen()),
        ItemDetailScreen.RouteName: ((context) => ItemDetailScreen()),
      },
    );
  }
}
