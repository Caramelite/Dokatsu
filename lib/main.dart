import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './views/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dokatsu',
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        accentColor: Colors.amber,
      ),
      home: HomeScreen()
    );
  }
}
