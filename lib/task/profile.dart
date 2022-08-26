import 'package:flutter/material.dart';

import 'data.dart';

int a = 0;
String b = "";

class ProfilPage extends StatefulWidget {
  final String url;
  final String name;
  final String address;
  final Icon myIcon;

  ProfilPage(
      {required this.url,
      required this.name,
      required this.address,
      required this.myIcon});

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 35),
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(

                    ///== InkWell
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child:  Icon(
                      Icons.arrow_back_ios
                    )
                    //widget.myIcon,
                ),

              ],
            ),
          ),
          Text(NameDna),
          Container(
            margin: const EdgeInsets.only(top: 35),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              // 1 shape, 2

              borderRadius: BorderRadius.circular(40),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,

                  /// مقدار الانتشار
                  blurRadius: 20,
                )
              ],

              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.url),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.address,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[400],
              // color: Colors.grey.withOpacity(0.4)
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildStatColumn("53", "Photos"),
              buildStatColumn("223k", "Followers"),
              buildStatColumn("117", "Following"),
            ],
          ),
          Expanded(
            ///responsive => tablet, dose
            child: Container(
              margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.15),
                  borderRadius: const BorderRadius.vertical(
                      top: const Radius.circular(25))),
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 5 / 6,
                children: [
                  buildPictureCard(
                      "https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=1260"),
                  buildPictureCard(
                      "https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=1260"),
                  buildPictureCard(
                      "https://images.pexels.com/photos/733475/pexels-photo-733475.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=1260"),
                  buildPictureCard(
                      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=1260"),
                  buildPictureCard(
                      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=1260"),
                  buildPictureCard(
                      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=1260"),
                  buildPictureCard(
                      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=1260"),
                  buildPictureCard(
                      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=1260"),
                  buildPictureCard(
                      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=1260"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Card buildPictureCard(String url) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(url),
            )),
      ),
    );
  }

  Column buildStatColumn(String value, String title) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
