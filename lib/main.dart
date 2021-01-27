import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/home/home_screen.dart';
import 'package:online_shop_app/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: COLORS['TEXT']),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Homescreen(),
    );
  }
}