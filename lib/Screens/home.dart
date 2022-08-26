import 'package:button_navigation_bar/button_navigation_bar.dart';
import 'package:button_navigation_bar/button_navigation_expandable.dart';
import 'package:dna/Screens/data.dart';
import 'package:dna/Screens/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  GestureDetector(
                    onTap: () {
                      ///  Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Post(profileImage, UserName, Location, ImagePost, Likes

                      // "https://images.assetsdelivery.com/compings_v2/triken/triken1608/triken160800029.jpg",
                      // "Zahraa",
                      // "Baghdad",
                      // "https://thumbs.dreamstime.com/b/spring-flowers-blue-crocuses-drops-water-backgro-background-tracks-rain-113784722.jpg",
                      // 1452

                      ),
                  Post(
                      "https://www.shareicon.net/data/512x512/2016/05/24/770137_man_512x512.png",
                      "Ahmed",
                      "Dubai",
                      "https://img.freepik.com/free-photo/copy-space-roses-flowers_23-2148860032.jpg?w=2000",
                      5000),
                ],
              ))
            ],
          )),
      floatingActionButton: ButtonNavigationBar(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        children: [
          ButtonNavigationItem(
              icon: Icon(Icons.map_outlined),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (BuildContext context) => ProfilePage()));
              }),
          ButtonNavigationItem(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  // cardCounter++;
                });
              }),
          ButtonNavigationItem.expandable(
              expandableSpacing: 48.0,
              verticalOffset: 56.0,
              icon: Icon(Icons.expand_less),
              collapseButton: ButtonNavigationItem(
                  onPressed: () {},
                  color: Colors.blueGrey,
                  icon: Icon(Icons.close)),
              children: [
                ButtonNavigationExpandable(
                  onPressed: () {},
                  label: "Option 1",
                  height: 40,
                  width: 128,
                  icon: Icon(Icons.info),
                ),
                ButtonNavigationExpandable(
                    onPressed: () {}, height: 40, width: 96, label: "Option 2"),
              ]),
          ButtonNavigationItem(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {});
              }),
          ButtonNavigationItem(
              icon: Icon(Icons.view_stream_sharp),
              onPressed: () {
                setState(() {
                  // cardCounter = 2;
                });
              }),
        ],
      ),
    );
  }

  Container Post(String profileImag, String name, String Location,
      String postImage, int Like) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfilePage(
                                profileImage: profileImag,
                                Name: name,
                                loc: Location,
                                photos: 536,
                                followers: 600,
                            following: 64,
                              )));
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(profileImag),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        Location,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          imagePost(postImage),
          SizedBox(
            height: 10,
          ),
          Text(
            "$Like Likes",
            style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600,

              //       color: Colors.black
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Stack imagePost(String url) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.6),
              image:
                  DecorationImage(fit: BoxFit.cover, image: NetworkImage(url))),
        ),
        Positioned(
            right: 20,
            bottom: 20,
            child: Icon(
              Icons.favorite,
              color: Colors.white.withOpacity(0.9),
              size: 40,
            ))
      ],
    );
  }

  // class name {
  //   add()
  // }

  int add() {
    int a = 10;
    dec(a);
    return 2;
  }

  int dec(int aa) {
    return 2;
  }
}
