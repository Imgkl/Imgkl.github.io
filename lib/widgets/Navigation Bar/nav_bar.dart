import 'package:flutter/material.dart';



class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 110,
            child: Image.asset('assets/favicon.png'),
          ),
        ],
      ),
      
    );
  }
} 