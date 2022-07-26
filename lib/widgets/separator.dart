import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  // Home page seperator widget for lines under title
  @override
  Widget build(BuildContext context) {
    // return a red container
    return new Container(
        // set margins, height and width
        margin: new EdgeInsets.symmetric(vertical: 6.0),
        height: 2.0,
        width: 25.0,
        color: new Color.fromARGB(255, 255, 0, 0));
  }
}
