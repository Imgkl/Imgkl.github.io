import 'package:flutter/material.dart';
import 'package:flutter_showcase/flutter_showcase.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imgkl/widgets/overlayPage.dart';

class Preview extends StatelessWidget {
  final int currentIndex;

  const Preview({Key key, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(OverlayMenuPage(currentIndex));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                FontAwesomeIcons.arrowUp,
                color: Colors.white,
              ),
              Container(
                height: 30,
                width: 100,
                child: Center(
                  child: Text(
                    "Preview",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
