import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lhs/configurations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDetails extends StatefulWidget {
  static const String screen_name = 'MyDetailsScreen';
  @override
  _MyDetails createState() => _MyDetails();
}

class _MyDetails extends State<MyDetails> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor)
          ..rotateY(isDrawerOpen ? -0.5 : 0),
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "My Card",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            toolbarHeight: 85,
            leading: isDrawerOpen
                ? Container(
                    width: 30,
                    height: 30,
                    decoration: nMbox,
                    child: InkWell(
                      child: Container(
                        child: Image.asset(
                          "images/icons8-double-left-100.png",
                          // fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          scaleFactor = 1;
                          isDrawerOpen = false;
                        });
                      },
                    ),
                  )
                : Container(
                    width: 50,
                    height: 10,
                    decoration: nMbox,
                    child: InkWell(
                      child: Container(
                        width: 10,
                        height: 2,
                        child: Image.asset(
                          "images/menu.png",
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          xOffset = 230;
                          yOffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen = true;
                        });
                      },
                    ),
                  ),
            //   // leading: IconButton(
            //   //     icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
            backgroundColor: Colors.transparent,
            elevation: 0,
            // actions: [
            //   Container(
            //     child:
            //         InkWell(child: Image.asset("images/icons8-menu-240.png")),
            //   )
            //   // NMButton(icon: Icons.heart),
            // ],
          ),
          extendBodyBehindAppBar: false,
          backgroundColor: mC,
          body: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //isDrawerOpen
                          // ? IconButton(
                          //     icon: Icon(Icons.arrow_back_ios),
                          //     onPressed: () {
                          //       setState(() {
                          //         xOffset = 0;
                          //         yOffset = 0;
                          //         scaleFactor = 1;
                          //         isDrawerOpen = false;
                          //       });
                          //     },
                          //   )
                          // : IconButton(
                          //     icon: Icon(Icons.menu),
                          //     onPressed: () {
                          //       setState(() {
                          //         xOffset = 230;
                          //         yOffset = 150;
                          //         scaleFactor = 0.6;
                          //         isDrawerOpen = true;
                          //       });
                          //     }),
                          // Column(
                          //   children: [
                          //     Text('Location'),
                          //     Row(
                          //       children: [
                          //         Icon(
                          //           Icons.location_on,
                          //           color: primaryGreen,
                          //         ),
                          //         Text('Ukraine'),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                          // CircleAvatar()
                        ],
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: <Widget>[
                    //     NMButton(icon: Icons.arrow_back),
                    //     NMButton(icon: Icons.menu),
                    //   ],
                    // ),
                    // SizedBox(height: 10),
                    AvatarImage(),
                    SizedBox(height: 15),
                    Text(
                      'Himanshu Chaubey',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff303a5e)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Student',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Color(0xffff6344)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '179005122020',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff303a5e)),
                    ),
                    SizedBox(height: 15),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: <Widget>[
                    //     NMButton(icon: FontAwesomeIcons.facebookF),
                    //     SizedBox(width: 25),
                    //     NMButton(icon: FontAwesomeIcons.twitter),
                    //     SizedBox(width: 25),
                    //     NMButton(icon: FontAwesomeIcons.instagram),
                    //   ],
                    // ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        SocialBox(
                            icon: FontAwesomeIcons.calendarDay,
                            count: "D.O.B :-",
                            category: '06-10-2001'),
                        //SizedBox(width: 15),
                        // SocialBox(
                        //     icon: FontAwesomeIcons.userAlt,
                        //     count: '1.2k',
                        //     category: 'followers'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        SocialBox(
                            icon: FontAwesomeIcons.eyeDropper,
                            count: 'Blood Group :-',
                            category: 'A+'),
                        // SizedBox(width: 15),
                        // SocialBox(
                        //     icon: FontAwesomeIcons.user,
                        //     count: '485',
                        //     category: 'following'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        SocialBox(
                            icon: FontAwesomeIcons.phone,
                            count: 'Mobile No. :-',
                            category: '9076401790'),
                        // SizedBox(width: 15),
                        // SocialBox(
                        //     icon: FontAwesomeIcons.folderOpen,
                        //     count: '7',
                        //     category: 'projects'),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    SizedBox(height: 35),
                  ],
                ),
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.05,
                minChildSize: 0.05,
                maxChildSize: 0.4,
                builder: (BuildContext context, scroll) {
                  return Container(
                    decoration: nMbox,
                    child: ListView(
                      controller: scroll,
                      //   SizedBox(
                      //   width: 40,
                      // ),
                      children: <Widget>[
                        Center(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 30),
                                child: Image.asset(
                                    "images/icons8-chevron-100.png"),
                                // child: Icon(
                                //   Icons.arrow_upward,
                                //   color: fCL,
                                //   size: 30,
                                // ),
                              ),
                              Text(
                                'Share',
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Help Lifeline Health Services \nto reach more number of peoples\n by Sharing with your Friends',
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 35),
                              Container(
                                width: 225,
                                padding: EdgeInsets.all(10),
                                decoration: nMboxInvert,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(FontAwesomeIcons.facebookF,
                                        color: fCL),
                                    Icon(FontAwesomeIcons.twitter, color: fCL),
                                    Icon(FontAwesomeIcons.instagram,
                                        color: fCL),
                                    Icon(FontAwesomeIcons.whatsapp, color: fCL),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25),
                              FaIcon(
                                FontAwesomeIcons.copy,
                                color: Colors.pink.shade800,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Copy link',
                                ),
                              ),
                              SizedBox(height: 25),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: nMboxInvert,
        child: Row(
          children: <Widget>[
            FaIcon(icon, color: Color(0xffff6344), size: 20),
            SizedBox(width: 8),
            Text(
              count,
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: Color(0xff303a5e)),
            ),
            SizedBox(width: 3),
            Text(
              category,
              style: TextStyle(color: Color(0xff303a5e)),
            ),
          ],
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final Image image;
  const NMButton({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: nMbox,
      child: InkWell(
        child: Container(
          child: image,
        ),
        onTap: () {},
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/avatar.JPG'),
            ),
          ),
        ),
      ),
    );
  }
}
