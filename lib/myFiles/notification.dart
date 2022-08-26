import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.green,
          ),
          Icon(
            Icons.star,
            color: Colors.green,
          ),
        ],
        leading: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        elevation: 0,
      ),


      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color(0xff6447ee),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "الاشعارات",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: "Cairo"),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            buildCard(),
                            buildCard(),
                            buildCard(),
                            buildCard(),
                            buildCard(),
                            buildCard(),
                            buildCard(),
                            buildCard(),
                            buildCard(),
                            buildCard(),
                            buildCard(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  NotificationCard(),
                  NotificationCard(),
                  NotificationCard(),
                  NotificationCard(),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Container NotificationCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 300,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(0, 7)),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Zahraa Muhammed",
                    style: TextStyle(
                        fontSize: 23, fontFamily: "Cairo", color: Colors.grey),
                  ),
                  Text(
                    "Zahraa Muhammed",
                    style: TextStyle(
                        fontSize: 18, fontFamily: "Cairo", color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.notifications_active,
                size: 40,
                color: Colors.grey,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("2022-08-17 9:30",
                    style: TextStyle(
                        fontSize: 15, fontFamily: "Cairo", color: Colors.grey)),
              ),

              Container(
                height: 2,
                width: 235,
                color: Colors.grey,
              ),
              // Divider(
              //   height: 2,
              //   thickness: 10,
              //   color: Colors.grey,
              // ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
                "Hi, I am Mr. Shaheen Pribo. I tried to contact Mrs. Beka, but it shows me a mistake. In any case, I will send you the"),
          )
        ],
      ),
    );
  }

  Container buildCard() {
    return Container(
      margin: EdgeInsets.all(4),
      height: 50,
      width: 50,
      color: Colors.green,
    );
  }
}
