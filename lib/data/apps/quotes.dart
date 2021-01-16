import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';

class Quotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: Frame.builder,
      home: QuotesApp(),
    );
  }
}

class QuotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
