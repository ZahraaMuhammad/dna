import 'package:dna/Screens/qrScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationPage(),
    );
  }
}
