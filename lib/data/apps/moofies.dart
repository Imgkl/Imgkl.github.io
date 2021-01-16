import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';

class Moofies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: Frame.builder,
      home: MoofiesApp(),
    );
  }
}

class MoofiesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
