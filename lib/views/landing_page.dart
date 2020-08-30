import 'package:flutter/material.dart';
import 'package:imgkl/styles/colors.dart';
import 'package:imgkl/views/centered_view.dart';
import 'package:imgkl/views/pages/page_four.dart';
import 'package:imgkl/views/pages/page_one.dart';
import 'package:imgkl/views/pages/page_second.dart';
import 'package:imgkl/views/pages/page_third.dart';
import 'package:imgkl/widgets/Navigation%20Bar/nav_bar.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_BLACK_BG,
      body: Stack(
        children: [
          PageView(
            pageSnapping: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              PageOne(),
              PageSecond(),
              PageThird(),
              PageFour(),
            ],
          ),
          
        ],
      ),

    );
  }
}
