import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({Key? key}) : super(key: key);

  // Build for the home pages background image
  @override
  Widget build(BuildContext context) {
    // return a container
    return new Container(
      // set the child to an image
      child: new Image(
        // use ker_building asset image
        image: AssetImage('assets/images/ker_building.JPG'),
        // set fit to cover
        fit: BoxFit.cover,
      ),
      // set box constraints to expand to a height of 335
      constraints: BoxConstraints.expand(height: 335.0),
    );
  }
}
