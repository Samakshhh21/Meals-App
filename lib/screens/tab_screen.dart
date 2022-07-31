import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meals_app/screens/category_screen.dart';
import 'package:meals_app/screens/favourites_screen.dart';

class tabControllerScreen extends StatefulWidget {
  const tabControllerScreen({Key? key}) : super(key: key);

  @override
  State<tabControllerScreen> createState() => _tabControllerScreenState();
}
//stateless widgit bhi bna skta tha no diffrence in top tab bar 
class _tabControllerScreenState extends State<tabControllerScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: const Text('Meals'),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.category),
                    text: 'Categories',
                  ),
                  Tab(
                    icon: Icon(Icons.favorite),
                    text: 'Favourites',
                  )
                ],
              )),
              body: const TabBarView(
                children: [CategoryScreen(),Favourite_screen()],
              ),
        ));
  }
}
