import 'package:dna/Screens/home.dart';
import 'package:dna/task/animation.dart';
import 'package:dna/task/home.dart';
import 'package:dna/toters/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedContainerTest(),
    );
  }
}
