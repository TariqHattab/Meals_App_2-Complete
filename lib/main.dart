import 'package:flutter/material.dart';
import 'package:meals_app_2/providers/favorite_list_provider.dart';
import 'package:meals_app_2/screens/meal_detail_screen/meal_detail_screen.dart';
import 'package:meals_app_2/screens/meals_screen/meals_screen.dart';
import 'package:meals_app_2/screens/tap_bar_screen/tap_bar_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => FavoriteList(),
      child: MaterialApp(
        title: 'Meals App 2',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
        ),
        home: TapBarScreen(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case MealsScreen.routeName:
              var args = settings.arguments as Map<String, dynamic>;
              return MaterialPageRoute(
                  builder: (context) =>
                      MealsScreen(args['id'], args['title'], args['meals']));
              break;

            case MealDetailScreen.routeName:
              var args = settings.arguments as Map<String, dynamic>;

              return MaterialPageRoute(
                  builder: (context) => MealDetailScreen(args['meal']));
              break;
          }
          return MaterialPageRoute(builder: (context) => TapBarScreen());
        },
        routes: {},
      ),
    );
  }
}
