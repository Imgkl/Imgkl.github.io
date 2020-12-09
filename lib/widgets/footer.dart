import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imgkl/widgets/launch_url.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(FontAwesomeIcons.github),
                onPressed: () {
                  launchURL("https://github.com/Imgkl");
                },
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.twitter,
                ),
                onPressed: () {
                  launchURL("https://twitter.com/im_gkl");
                },
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.linkedin,
                ),
                onPressed: () {
                  launchURL(
                      "https://www.linkedin.com/in/sai-gokula-krishnan-61a6a5115/");
                },
              ),
            ],
          ),
          Text(
            "Made with 💙 in Flutter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
