import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeGradient extends StatelessWidget {
  const HomeGradient({Key? key}) : super(key: key);

  // home page gradient effect build
  @override
  Widget build(BuildContext context) {
    // return a container
    return Container(
      // set margins of container
      margin: EdgeInsets.only(top: 230.0),
      // set the height of container
      height: 360.0,
      // use box decoration to add a linear gradient to the container
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // set the colors of the gradient
          colors: <Color>[
            Color.fromARGB(0, 0, 0, 0),
            Color.fromARGB(255, 0, 0, 80),
            Color.fromARGB(255, 0, 0, 255),
          ],
          // set stop points
          stops: [0.0, 0.2, 1.0],
          // set beginning offset
          begin: FractionalOffset(0.0, 0.1),
          // set end offset
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }
}
