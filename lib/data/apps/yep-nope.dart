import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';

class YepNope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: Frame.builder,
      home: YepNopeApp(),
    );
  }
}

class YepNopeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
