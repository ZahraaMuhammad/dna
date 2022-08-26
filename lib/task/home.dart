 import 'package:dna/task/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


//var 3

class HomePage1 extends StatefulWidget {
  // var 1
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  //var 2
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: Colors.white.withOpacity(0.9),

        //appBar: ,
        // bottomNavigationBar: ,

        body:
            //1 name, 2 child???? children , 3 properties

            Container(

                // color: Colors.red,
                padding: //const EdgeInsets.only(left: 10, right: 10, top: 45, bottom: 0),
               const EdgeInsets.all(10),

                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8),

                          //padding as property in  : Container, ListView
                          //padding as widget : Padding(padding: Ed... )

                          child: ListView(
                            scrollDirection : Axis.vertical, /// Axis.horizental
                              //SingleChildScrollView = ListView => Scrolling ( diseff: scrollchildd= one child, listview= > children)
                              // padding: EdgeInsets.only(top: 8),

                              //only listView &  Container ==>  contain padding as property
                              children: [
                                Post(
                                    "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=640",
                                    "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=940"),
                                Post(
                                    "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=940",
                                    "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                                Post(
                                    "https://images.pexels.com/photos/1212600/pexels-photo-1212600.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=200&w=1260",
                                    "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                                Post(
                                    "https://images.pexels.com/photos/1212600/pexels-photo-1212600.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=200&w=1260",
                                    "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                                Post(
                                    "https://images.pexels.com/photos/1212600/pexels-photo-1212600.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=200&w=1260",
                                    "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                              ]),
                        ),
                      )
                    ])));
  }

  ///
//   int funName (int a,int b){
//     int sum = a +b;
//     return sum;
//   }

  //
  // Color:
  // Colors.grey,
  // Colors.grey[ش100] =(+100)> [900],
  // Colors.grey.withOpacity(0.2),
  // Color(0xffbababa),
  // Colors.grey.withrgbo(red,green,blue,1),
  ///

  // int funName(///DATA){
  // int a ,int b ,
  // return a+b
  // }

  // int funName(int a){
  //   return a;
  // }

  String functionName() {
    String a = "10";
    return a;
  }

//url = link = image url
  Container Post(String urlPost, String urlProfilePhoto) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
    // padding: const EdgeInsets.only(bottom: 100),
       padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),

      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2), //1 => 0

        ///1 , 0
        borderRadius: BorderRadius.circular(30),
      ),

      child: Column(
        // start , center , end , spaceAround, spaceBetween ,spaceEvenly
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //start, center , end
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstRow(urlProfilePhoto, "Zahraa", "Paris",
              const Icon(Icons.arrow_back_ios)),
          const SizedBox(
            height: 10,
          ),
          PostPicture(urlPost),
          const SizedBox(
            height: 5,
          ),
          Text(
            "963 likes",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]), // start from 100  to 900 ///+100
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  Row FirstRow(String urlProfilePhoto, String myName, String myFunaddress,
      Icon myFunIcon) {
    return Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, //(كل المسافه الممكنه )
        //mainAxisAlignment: MainAxisAlignment.spaceAround,//(مجرد مسافه حول الودجت نفسها بغض النظر ااذا توفرت ماحه ازيد ممكن تستغلها بس هي ماتاخذها فقط حولها بقيمه معينه )

        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            GestureDetector(
                onTap: () {
                  //TextButton , ElevatedButton = > on Tap ACTION
                  //InkWell ,GestureDetector
                  // push to new page // pop back one step
                  //

                  /// Navigator.of(context).pop(); ==> يرجع خطوة وحدة

                  Navigator.of(context).push(
                    /// يتقدم خطوة
                    MaterialPageRoute(
                      builder: (context) => //page name

                          ProfilPage(
                        url: urlProfilePhoto,
                        name: "Zahraa",
                        address: "Baghdad",
                        myIcon: myFunIcon,
                      ),
                    ),
                  );
                  //push , pop
                },
                child: CircleAvatar(
                  // Container (decoration: BoxDecoration (shape:BoxShape.circle))
                  radius: 12,
                  backgroundImage: NetworkImage(urlProfilePhoto),
                )),
            const SizedBox(width: 5),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(myName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                myFunaddress,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900]),

                ///100-900
              )
            ])
          ]),



          ///star
        ]);
  }

  Stack PostPicture(String urlPost) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 20,
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(urlPost),
              )),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Icon(
            Icons.favorite,
            size: 35,
            color: Colors.white.withOpacity(0.6),
          ),
        )
      ],
    );
  }
}
