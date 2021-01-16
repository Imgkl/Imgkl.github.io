import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';

class CommuniTV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: Frame.builder,
      home: CommuniTVApp(),
    );
  }
}

class CommuniTVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
