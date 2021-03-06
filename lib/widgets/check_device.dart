import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:imgkl/views/landing_page.dart';

class CheckDevice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return (screenWidth > 700 == true)
        ? LandingPage()
        : Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: screenHeight * 0.8,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 95.0),
                    child: FlareActor(
                      'assets/Filip.flr',
                      animation: "idle",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 80.0),
                  child: TyperAnimatedTextKit(
                      text: [
                        "Mobile site is under construction.\nPlease visit from PC",
                      ],
                      isRepeatingAnimation: false,
                      textStyle: TextStyle(
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.center,
                      alignment: AlignmentDirectional.topStart),
                ),
              ],
            ),
          );
  }
}
