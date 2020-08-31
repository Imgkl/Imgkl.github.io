import 'package:flutter/material.dart';
import 'package:imgkl/views/pages/page_second/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gokul\'s Portfolio',
      theme: ThemeData(
        fontFamily: "Alata",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}

// class CheckDevice extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return (screenWidth > 700 == true)
//         ? LandingPage()
//         : Scaffold(
//             body: Container(
//               child: Center(
//                 child: Text("Visit from PC"),
//               ),
//             ),
//           );
//   }
// }
