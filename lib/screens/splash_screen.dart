import 'package:flutter/material.dart';
import 'package:lhs/screens/HomePage.dart';
import 'dart:async';

import 'mydetails_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String screen_name = 'SplashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.of(context).pushNamed(HomePage.screen_name));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: Gradientbg(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/logo.png")))
                    // child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: <Widget>[
                    //     AssetImage("assets/logo.png")
                    //     // CircleAvatar(
                    //     //   backgroundColor: Colors.white,
                    //     //   radius: 50.0,
                    //       // child: Icon(
                    //       //   Icons.comment_bank_sharp,
                    //       //   color: Colors.greenAccent,
                    //       //   size: 50,
                    //       // ),
                    //     // ),
                    //     // Padding(
                    //     //   padding: EdgeInsets.only(top: 10.0),
                    //     // ),

                    //     // Text(
                    //     //   "LifeLine",
                    //     //   style: TextStyle(
                    //     //       color: Colors.white,
                    //     //       fontSize: 24.0,
                    //     //       fontWeight: FontWeight.bold),
                    //     // )
                    //   ],
                    // ),
                    ),
              ),
              //Center(child: CircularProgressIndicator())
              // Expanded(
              //   flex: 1,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       CircularProgressIndicator(),
              //       Padding(
              //         padding: EdgeInsets.only(top: 20.0),
              //       ),
              //       Text(
              //         "Human Life \n Are no More For Sale",
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 18.0,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // )
            ],
          )
        ],
      ),
    );
  }

  BoxDecoration Gradientbg() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffff6344), Color(0xff303a5e)]));
  }
}
