import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> listImages = [

    'https://www.factroom.ru/wp-content/uploads/2019/04/5-osobennostej-klimata-pitera-o-kotoryh-vy-dolzhny-znat-esli-sobiraetes-syuda-priekhat.jpg',
    'https://cdn.flixbus.de/2018-01/munich-header-d8_0.jpg',

  ];



  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 100),
          CarouselImages(
            scaleFactor: 0.7,
            listImages: listImages,
            height: 300.0,
            borderRadius: 30.0,
            cachedNetworkImage: true,
            verticalAlignment: Alignment.bottomCenter,
            onTap: (index) {
              print('Tapped on page $index');
            },
          )
        ],
      ),
    );
  }
}