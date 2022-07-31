import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meals_app/screens/category_Item_screen.dart';
import 'package:meals_app/screens/category_screen.dart';
import 'package:meals_app/screens/favourites_screen.dart';

class Bottom_Tab_Bar extends StatefulWidget {
  const Bottom_Tab_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Tab_Bar> createState() => _Bottom_Tab_BarState();
}

class _Bottom_Tab_BarState extends State<Bottom_Tab_Bar> {
  final List<Widget> pages = const [CategoryScreen(), Favourite_screen()];
  int currindex = 0;
  void selectpage(int index) {
    setState(() {
      currindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals App'),
      ),
      body: pages[currindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectpage,
        currentIndex: currindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Catogeries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}
