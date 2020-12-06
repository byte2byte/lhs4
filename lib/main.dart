import 'package:flutter/material.dart';
import 'package:lhs/screens/HomePage.dart';
import 'package:lhs/screens/drawer_screen.dart';
import 'package:lhs/screens/mydetails_screen.dart';
import 'package:lhs/screens/splash_screen.dart';

// void main() {
//   runApp(MaterialApp(
//     home: HomePage(),
//   ));
// }
void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [DrawerScreen(), MyDetails()],
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LHS",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: SplashScreen.screen_name,
      routes: {
        SplashScreen.screen_name: (context) => SplashScreen(),
        HomePage.screen_name: (context) => HomePage(),
        MyDetails.screen_name: (context) => MyDetails(),
        DrawerScreen.screen_name: (context) => DrawerScreen(),
      },
    );
  }
}
