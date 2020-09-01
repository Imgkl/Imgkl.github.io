import 'package:flutter/material.dart';
import 'package:imgkl/widgets/check_device.dart';

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
        canvasColor: Colors.white,
        fontFamily: "Alata",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CheckDevice(),
    );
  }
}