import 'package:flutter/material.dart';
import 'package:meals_app_2/screens/meals_screen/meals_screen.dart';
import 'package:meals_app_2/screens/tap_bar_screen/tap_bar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        }
        return MaterialPageRoute(builder: (context) => TapBarScreen());
      },
      // routes: {
      //   //MealsScreen.routeName: (ctx) => MealsScreen(),
      // },
    );
  }
}
