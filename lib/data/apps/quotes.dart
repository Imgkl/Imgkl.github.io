import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class QuotesApp extends StatefulWidget {
  @override
  _QuotesAppState createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
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
            Image.asset("assets/images/quotes/1.PNG"),
            Image.asset("assets/images/quotes/2.PNG"),
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
