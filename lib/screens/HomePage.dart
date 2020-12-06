import 'package:flutter/material.dart';

import 'drawer_screen.dart';
import 'mydetails_screen.dart';

class HomePage extends StatelessWidget {
  static const String screen_name = 'HomePageScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), MyDetails()],
      ),
    );
  }
}
