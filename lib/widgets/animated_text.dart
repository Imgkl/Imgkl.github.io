import 'package:flutter/material.dart';

class AnimatedTexts extends StatelessWidget {
  final bool change;
  const AnimatedTexts(
      {Key key,
      @required this.textAni,
      this.text,
      this.fontsize,
      this.letterSpacing,
      this.marginTop, this.change = false})
      : super(key: key);

  final double textAni;
  final double letterSpacing;
  final double fontsize;
  final double marginTop;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      width: double.infinity,
      alignment: Alignment.center,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(),
      transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, letterSpacing,
          (change) ? textAni : -textAni, 0, 1),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          letterSpacing: letterSpacing,
          color: Colors.white,
          fontSize: fontsize,
        ),
      ),
    );
  }
}
