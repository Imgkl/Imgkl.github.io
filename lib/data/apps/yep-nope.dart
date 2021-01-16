import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class YepNopeApp extends StatefulWidget {
  @override
  _YepNopeAppState createState() => _YepNopeAppState();
}

class _YepNopeAppState extends State<YepNopeApp> {
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
            Image.asset("assets/images/yepnope/1.png"),
            Image.asset("assets/images/yepnope/2.png"),
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
        if (index != 1)
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
                        if (index != 1) {
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
