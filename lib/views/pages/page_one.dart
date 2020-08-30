import 'package:flutter/material.dart';
import 'package:imgkl/styles/colors.dart';
import 'package:particles_flutter/particles_flutter.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: COLOR_BLACK_BG,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text(
                  "Sai Gokula Krishnan",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.white),
                ),
                Text(
                  "I Code Stuff.",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
