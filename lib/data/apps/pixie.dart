import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';

class Pixie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: Frame.builder,
      home: PixieApp(),
    );
  }
}

class PixieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
