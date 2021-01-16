import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rude extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: Frame.builder,
      home: RudeApp(),
    );
  }
}

class RudeApp extends StatefulWidget {
  @override
  _RudeAppState createState() => _RudeAppState();
}

class _RudeAppState extends State<RudeApp> {
  PageController controller;
  int index = 0;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: controller,
          onPageChanged: (e) {
            setState(() {
              index = e;
            });
          },
          children: [
            Image.asset("assets/images/rude/1.PNG"),
            Image.asset("assets/images/rude/2.PNG"),
            Image.asset("assets/images/rude/3.PNG"),
            Image.asset("assets/images/rude/4.PNG"),
            Image.asset("assets/images/rude/6.PNG"),
            Image.asset("assets/images/rude/7.PNG"),
            Image.asset("assets/images/rude/5.PNG"),
          ],
        ),
        if (index != 0)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white30,
                  ),
                  child: IconButton(
                      color: Colors.black,
                      icon: Icon(FontAwesomeIcons.arrowLeft),
                      onPressed: () {
                        if (index != 0) {
                          setState(() {
                            controller.animateToPage(index - 1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          });
                        }
                      }),
                )),
          ),
        if (index != 6)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white30,
                  ),
                  child: IconButton(
                      icon: Icon(FontAwesomeIcons.arrowRight),
                      onPressed: () {
                        if (index != 6) {
                          setState(() {
                            controller.animateToPage(index + 1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          });
                        }
                      }),
                )),
          ),
      ],
    );
  }
}
