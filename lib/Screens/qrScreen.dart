import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class QRCode extends StatefulWidget {
  @override
  _QRCodeState createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("asset/images/dnaLogo.png"),
              fit: BoxFit.cover,
            )),
          ),

          Text(
            "Zahraa Muhammed",

            style: TextStyle(
              fontSize:  30,


            ),



            

          ),
        ],
      ),
    ));
  }
}
