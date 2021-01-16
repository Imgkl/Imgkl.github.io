import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_showcase/flutter_showcase.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imgkl/data/data.dart';
import 'package:imgkl/widgets/frosted_transition.dart';

/// This is where the magic happens.
/// A [PopupRoute] with a transparent background and a [FrostTransition] that increase the value of the Frosted Glass blur effect over a short period of time.
class OverlayMenuPage extends PopupRoute<Null> {
  static const double frostAnimationStartValue = 0.0;
  static const double frostAnimationEndValue = 10.0;
  final int currentIndex;

  OverlayMenuPage(this.currentIndex);

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => "Close";

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>

      /// The blur is just done here.
      FrostTransition(
        animation: new Tween<double>(
          begin: frostAnimationStartValue,
          end: frostAnimationEndValue,
        ).animate(animation),
        child: child,
      );

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) =>
      new _PageLayout(
        currentIndex: currentIndex,
      );

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);
}

class _PageLayout extends StatefulWidget {
  final int currentIndex;

  const _PageLayout({this.currentIndex});
  @override
  _PageLayoutState createState() => new _PageLayoutState();
}

/// Just a nice dummy UI.
class _PageLayoutState extends State<_PageLayout> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.transparent,
      body: Material(
        child: Stack(
          children: [
            Showcase(
              theme: TemplateThemeData(
                  backgroundColor: Colors.transparent,
                  titleTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.1,
                      fontFamily: "Alata",
                      letterSpacing: 5),
                  descriptionTextStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: "Alata",
                    fontWeight: FontWeight.w400,
                  ),
                  flutterLogoColor: FlutterLogoColor.white,
                  frameTheme: FrameThemeData(
                    frameColor: Colors.black,
                    statusBarBrightness: Brightness.dark,
                  ),
                  buttonTheme: ButtonThemeData(
                    buttonColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.all(16),
                  ),
                  buttonTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                  buttonIconTheme: IconThemeData(color: Colors.black)),
              app: apps[widget.currentIndex],
              title: titles[widget.currentIndex],
              description: descriptions[widget.currentIndex],
              links: [
                LinkData.github(
                    'https://github.com/jamesblasco/flutter_showcase'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 20),
              child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.times,
                    size: 30,
                  ),
                  onPressed: () => Navigator.pop(context)),
            ),
          ],
        ),
      ),
    );
  }
}
