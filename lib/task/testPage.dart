import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController uername = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios_sharp,
              size: 50,
              color: Colors.red,
            ),
          ),
          Text(
            " hi here Test Page",
            style: TextStyle(fontSize: 40, color: Colors.red),
          ),
          TextFormField(
            controller: uername,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
          TextFormField(
            controller: uername,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
          TextFormField(
            controller: uername,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ],
      )),
    );
  }
}
