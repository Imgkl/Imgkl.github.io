import 'package:flutter/material.dart';
import 'package:imgkl/widgets/Navigation%20Bar/nav_bar.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          NavigationBar(),
        ],
      ),
      
    );
  }
}