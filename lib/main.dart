import 'package:flutter/material.dart';
import 'package:katsuu/Screens/dog_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katsuu',
      home: DogScreen(),
    );
  }
}
