import 'package:flutter/material.dart';
import 'package:lhs/configurations.dart';

class DrawerScreen extends StatefulWidget {
  static const String screen_name = 'DrawerScreen';
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: primaryGreen,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xffff6344), Color(0xff303a5e)])),
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 170, 0),
            //color: Colors.orange,
            width: 200,
            height: 175,
            //alignment: Alignment.topLeft,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/avatar.JPG"),
                  radius: 45,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Himanshu Chaubey, 19',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Center(
                      child: Text('ID:- 218465465',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        child: Text(
                          "My Family",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.medical_services,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      child: Text(
                        "Doctors",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.local_hospital,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      child: Text(
                        "Laboratories",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.healing,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      child: Text(
                        "Diagnostics",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.handyman,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      child: Text(
                        "Medicines",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      child: Text(
                        "Rate App",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.headset,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    width: 30,
                    height: 30,
                    child: Image.asset("images/logout.png")),
                // Container(
                //   width: 2,
                //   height: 18,
                //   color: Colors.white,
                // ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Log out',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
