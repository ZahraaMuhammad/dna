import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';

class HomePageT extends StatefulWidget {
  @override
  State<HomePageT> createState() => _HomePageTState();
}

class _HomePageTState extends State<HomePageT> {
  final List<String> listImages = [
    'asset/images/dnaLogo.png',
    'asset/images/dnaLogo.png',
    'asset/images/dnaLogo.png',
    'asset/images/dnaLogo.png',
    'asset/images/dnaLogo.png',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey.withOpacity(0.2),
        appBar: AppBar(
          elevation: 1.5,
          backgroundColor: Colors.white,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.filter_alt_rounded,
                      color: Colors.black54,
                    ),
                    Text(
                      "توصيل الى\n بغداد",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ],
          leading: Icon(
            Icons.filter_alt_rounded,
            color: Colors.black54,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "سجل الدخول باستخدام التطبيق",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black45),
                  ),
                  Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Colors.green,
                  ),
                ],
              ),
              CarouselImages(

                listImages: listImages,
                height: 300.0,
               // borderRadius: 30.0,
               // cachedNetworkImage: true,
              //  verticalAlignment: Alignment.bottomCenter,
                onTap: (index) {
                 // print('Tapped on page $index');
                },
              )
            ],
          ),
        ));
  }
}
