import 'package:darnafiz/screens/bottom_test.dart';
import 'package:darnafiz/screens/favorite_screen.dart';
import 'package:darnafiz/screens/home_page.dart';
import 'package:darnafiz/screens/user_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}