import 'package:belajar_flutter1/explore_page.dart';
import 'package:belajar_flutter1/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: const ExplorePage(),
    );
  }
}