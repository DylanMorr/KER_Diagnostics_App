import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppSummary extends StatelessWidget {
  // Main App Summary Widget
  @override
  Widget build(BuildContext context) {
    double topMargin = ResponsiveValue(
      context,
      defaultValue: 305.0,
      valueWhen: const [
        Condition.smallerThan(
          name: MOBILE,
          value: 230.0,
        ),
      ],
    ).value as double;
    // create a card content container
    final cardContent = Container(
      // set the margins
      margin: EdgeInsets.fromLTRB(16.0, 28.0, 16.0, 12.0),
      // set the box constraint to expand
      constraints: BoxConstraints.expand(),
      // setup a column to display main card content
      child: Column(
        // align the column to the center
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // create a container to hold the logo image
          Container(
            padding: EdgeInsets.only(bottom: 9),
            // use ClipRRect to add a border radius to the image
            child: ClipRRect(
              // add a border radius of 20 to only topleft and bottomright
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              // add the asset image of the ker logo
              child: Image.asset(
                'assets/images/kerlogo.jpg',
              ),
            ),
          ),
          // add welcome text to card
          Text(
            'Our business is to keep your business running smoothly',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );

    // add a card container for manipulating card
    final welcomeCard = Container(
      // using align align the container to the cener
      child: Align(
        alignment: Alignment.center,
        // create the container
        child: Container(
          // set the width
          width: 330,
          // set the child to the cardContent container
          child: cardContent,
          // set the height
          //height: MediaQuery.of(context).size.height / 6,
          height: 174.0,
          // set the margins
          margin: EdgeInsets.only(top: topMargin),
          // setup a box decoration for shape, border control and box shadow
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 90, 172),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
        ),
      ),
    );

    // return a final container for the card
    return Container(
      // set margins
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      // return a stack with the welcome Card inside
      child: Stack(
        children: <Widget>[
          welcomeCard,
        ],
      ),
    );
  }
}
