import 'package:flutter/material.dart';

import 'dummy_data.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose 2 category'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: DUMMY_CATEGORIES.length,
          padding: const EdgeInsets.all(8.0),
          itemBuilder: (ctx, index) {
            var category = DUMMY_CATEGORIES[index];
            print(index);
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    colors: [category.color.withOpacity(.7), category.color]),
              ),
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                category.title,
                style: TextStyle(fontSize: 22),
              ),
            );
          }),
    );
  }
}
