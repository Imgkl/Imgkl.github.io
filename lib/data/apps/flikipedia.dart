import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';

class Flikipedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: Frame.builder,
      home: FlikipediaApp(),
    );
  }
}

class FlikipediaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/flikipedia.png",
      height: 500,
      fit: BoxFit.contain,
    );
  }
}
