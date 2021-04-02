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
        primarySwatch: Colors.blue,
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
        title: Text('Choose category'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 2,
          ),
          itemCount: DUMMY_CATEGORIES.length,
          itemBuilder: (ctx, index) {
            var category = DUMMY_CATEGORIES[index];
            return Card(
              elevation: 4,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    DUMMY_CATEGORIES[index].color,
                  ]),
                ),
              ),
            );
          }),
    );
  }
}
