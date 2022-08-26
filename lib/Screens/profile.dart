import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String profileImage;
  final String Name;
  final String loc;
  final int photos;
  final int followers;
  final  int following;

  ProfilePage(
      {
        required this.profileImage,
      required this.Name,
      required this.loc,
      required this.photos,
      required this.followers,
      required this.following
      });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();

                  print("clikedd");
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              Icon(Icons.notifications_active),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.35),
                        spreadRadius: 18,
                        blurRadius: 25,
                        //offset: Offset(0,10),
                      )
                    ],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.profileImage))),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.Name,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.loc,
                style: TextStyle(
                  fontSize: 14,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              profileInfo(widget.photos, "Photos"),
              profileInfo(widget.followers, "Followers"),
              profileInfo(widget.following, "Following"),
            ],
          ),
          Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(30)),
            child: GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.all(10),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                photos(),
                photos(),
                photos(),
                photos(),
                photos(),
                photos(),
                photos(),
                photos(),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Container photos() {
    return Container(
      height: 20,
      width: 20,
      color: Colors.red,
    );
  }

  Column profileInfo(int count, String info) {
    return Column(
      children: [
        Text(
          "$count",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        Text(
          info,
          style: TextStyle(
              fontSize: 17,
              color: Colors.grey.withOpacity(0.8),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
