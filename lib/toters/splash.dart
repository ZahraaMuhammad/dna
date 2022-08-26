import 'package:dna/toters/home.dart';
import 'package:flutter/material.dart';

import '../Screens/home.dart';

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  Future Delay() async {
    await   Future.delayed(const Duration(seconds: 4));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePageT()),
    );
  }


  @override
  void initState() {
    super.initState();
    Delay();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "asset/images/dnaLogo.png",
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
