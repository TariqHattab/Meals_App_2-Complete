import 'package:flutter/material.dart';
import 'package:meals_app_2/screens/filters_screen/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
            width: double.infinity,
            height: 150,
            padding: const EdgeInsets.only(left: 15, top: 15),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            )),
        ListTile(
          leading: Icon(Icons.restaurant, size: 30),
          title: Text('Categories', style: TextStyle(fontSize: 20)),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        ListTile(
          leading: Icon(Icons.settings, size: 30),
          title: Text('Filters', style: TextStyle(fontSize: 20)),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          },
        ),
      ]),
    );
  }
}
