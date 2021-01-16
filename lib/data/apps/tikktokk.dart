import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';

class TikkTokk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: Frame.builder,
      home: TikkTokkApp(),
    );
  }
}

class TikkTokkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
