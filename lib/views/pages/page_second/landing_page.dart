import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imgkl/views/pages/page_second/animated_circles.dart';
import 'package:imgkl/views/pages/page_second/animated_text.dart';

int i = 0;

List<String> images = [
  "assets/images/screen1.jpg",
  "assets/images/screen2.jpg",
  "assets/images/screen3.jpeg"
];

List<String> titles = ['Sai Gokula Krishnan ', 'RUDE', "Moofies"];
List<String> subtitles = [
  'I Code Stuff. ',
  'Light-hearted mean notifications in hour intrevals.',
  "Movie searching never been easier"
];

String image = images.elementAt(0);
String title = titles.elementAt(0);
String subtitle = subtitles.elementAt(0);

bool change = false;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  AnimationController _controller1;
  Animation _animation1;

  AnimationController _controller2;
  Animation _animation2;

  AnimationController _controller3;
  Animation _animation3;

  AnimationController _controller4;
  Animation _size1;

  AnimationController _controller5;
  Animation _size2;

  AnimationController _controller6;
  Animation _size3;

  AnimationController _controller7;
  Animation textAni;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller1 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _animation1 = Tween(begin: 0, end: pi * 2)
        .animate(CurvedAnimation(parent: _controller1, curve: Curves.easeOut));

    _controller2 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1100));
    _animation2 = Tween(begin: 0, end: pi * 2)
        .animate(CurvedAnimation(parent: _controller2, curve: Curves.easeOut));

    _controller3 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1400));
    _animation3 = Tween(begin: 0, end: pi * 2)
        .animate(CurvedAnimation(parent: _controller3, curve: Curves.easeOut));

    _controller4 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _size1 = Tween(begin: 1.2, end: 1.8)
        .animate(CurvedAnimation(parent: _controller4, curve: Curves.ease));

    _controller5 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 550));
    _size2 = Tween(begin: 1.2, end: 1.8)
        .animate(CurvedAnimation(parent: _controller5, curve: Curves.ease));

    _controller6 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 680));
    _size3 = Tween(begin: 1.2, end: 1.8)
        .animate(CurvedAnimation(parent: _controller6, curve: Curves.ease));

    _controller7 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    textAni = Tween(begin: 1.0, end: 40.0)
        .animate(CurvedAnimation(parent: _controller7, curve: Curves.easeOut));

    _controller1.addListener(() {
      setState(() {});
    });

    _controller2.addListener(() {
      setState(() {});
    });

    _controller3.addListener(() {
      setState(() {
        if (_controller1.isCompleted &&
            _controller2.isCompleted &&
            _controller3.isCompleted) {
          _controller1.reset();
          _controller2.reset();
          _controller3.reset();
        }
      });
    });

    _controller4.addListener(() {
      setState(() {
        if (_controller4.isCompleted) {
          _controller4.reverse();
        }
      });
    });

    _controller5.addListener(() {
      setState(() {
        if (_controller5.isCompleted) {
          _controller5.reverse();
        }
      });
    });

    _controller6.addListener(() {
      setState(() {
        if (_controller6.isCompleted) {
          _controller6.reverse();
        }
      });
    });

    _controller7.addListener(() {
      setState(() {
        if (_controller7.isCompleted) {
          change = true;
          _controller7.reverse();
        } else if (_controller7.isDismissed) {
          change = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (i >= 2) {
            i = 0;
          } else if (i < 2) {
            i++;
          }
          setState(() {
            _controller1.forward();
            _controller2.forward();
            _controller3.forward();
            _controller4.forward();
            _controller5.forward();
            _controller6.forward();
            _controller7.forward();
            Future.delayed(Duration(milliseconds: 300), () {
              image = images.elementAt(i);
              title = titles.elementAt(i);
              subtitle = subtitles.elementAt(i);
              currentIndex = i;
            });
          });
        },
        backgroundColor: Colors.yellow[800],
        mini: true,
        child: Transform.rotate(
            angle: -_animation3.value, child: Icon(Icons.screen_rotation)),
      ),
      body: Container(
        color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatingCircles(
              animation: _animation3,
              width: width,
              size: _size3,
              image: image,
              sizeFator: 1.2,
              color: Colors.transparent,
            ),
            AnimatingCircles(
              animation: _animation2,
              width: width,
              size: _size2,
              image: image,
              sizeFator: 0.9,
              color: Colors.black26,
            ),
            AnimatingCircles(
              animation: _animation1,
              width: width,
              size: _size1,
              image: image,
              sizeFator: 0.42,
              color: Colors.transparent,
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            AnimatedTexts(
              textAni: textAni.value,
              fontsize: 72.0,
              letterSpacing: 3.0,
              marginTop: 0.0,
              text: title,
            ),
            Container(
              margin: EdgeInsets.only(top: 150.0),
              height: 1.0,
              width: 450.0,
              color: Colors.white,
            ),
            AnimatedTexts(
              change: change,
              textAni: -textAni.value,
              fontsize: 24.0,
              letterSpacing: 3.0,
              marginTop: 250.0,
              text: subtitle,
            ),
            //TODO: find the issue
            // currentIndex != 0
            //     ? Positioned(
            //         top: 40,
            //         left: 25,
            //         child: GestureDetector(
            //           onTap: () {
            //             setState(() {
            //               _controller1.forward();
            //               _controller2.forward();
            //               _controller3.forward();
            //               _controller4.forward();
            //               _controller5.forward();
            //               _controller6.forward();
            //               _controller7.forward();
            //               Future.delayed(Duration(milliseconds: 300), () {
            //                 image = images.elementAt(0);
            //                 title = titles.elementAt(0);
            //                 subtitle = subtitles.elementAt(0);
            //                 currentIndex = 0;
            //               });
            //             });
            //           },
            //           child: Container(
            //             child: Text(
            //               "Home",
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 30,
            //               ),
            //             ),
            //           ),
            //         ),
            //       )
            //     : Container()
          ],
        ),
      ),
    );
  }
}
