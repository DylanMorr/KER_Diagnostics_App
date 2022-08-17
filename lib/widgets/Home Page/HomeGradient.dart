import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeGradient extends StatelessWidget {
  const HomeGradient({Key? key}) : super(key: key);

  // home page gradient effect build
  @override
  Widget build(BuildContext context) {
    double topMargin = ResponsiveValue(
      context,
      defaultValue: 330.0,
      valueWhen: const [
        Condition.smallerThan(
          name: MOBILE,
          value: 235.0,
        ),
        Condition.largerThan(
          name: TABLET,
          value: 390.0,
        )
      ],
    ).value as double;
    // return a container
    return Container(
      // set margins of container
      margin: EdgeInsets.only(top: topMargin),
      // set the height of container
      height: ResponsiveValue(
        context,
        defaultValue: 360.0,
        valueWhen: const [
          Condition.smallerThan(
            name: MOBILE,
            value: 360.0,
          ),
          Condition.largerThan(
            name: TABLET,
            value: 390.0,
          )
        ],
      ).value,
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
