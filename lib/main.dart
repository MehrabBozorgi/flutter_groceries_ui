import 'package:flutter/material.dart';
import 'package:flutter_groceries_store/screens/begin_screen.dart';
import 'package:flutter_groceries_store/screens/bottom_navigation.dart';
import 'package:flutter_groceries_store/screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BeginScreen(),
    );
  }
}
