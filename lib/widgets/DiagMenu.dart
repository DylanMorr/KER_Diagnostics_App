import 'package:vector_math/vector_math.dart' show radians;
import 'package:flutter/material.dart';
import 'dart:math';

class DiagMenu extends StatelessWidget {
  const DiagMenu({Key? key}) : super(key: key);

  // Main page return build
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: RadialMenu(),
    );
  }
}

// stateful class for menu
class RadialMenu extends StatefulWidget {
  const RadialMenu({Key? key}) : super(key: key);

  @override
  State<RadialMenu> createState() => _RadialMenuState();
}

// add SingleTickerProviderStateMixin to provide a Ticker that is configured to only tick while the current tree is enabled
class _RadialMenuState extends State<RadialMenu>
    with SingleTickerProviderStateMixin {
  // create an animation controller
  late AnimationController controller;

  // initialise the controller
  @override
  void initState() {
    super.initState();
    // initialise and set duration and vsync
    controller =
        AnimationController(duration: Duration(milliseconds: 900), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // return the controller
    return RadialAnimation(controller: controller);
  }
}

// class to handle animation
class RadialAnimation extends StatelessWidget {
  // using tween<double> to handle animation so they can be chained together and allow for interpolation between a beginning and end value
  RadialAnimation({Key? key, required this.controller})
      // scale tween
      : scale = Tween<double>(
          begin: 1.5,
          end: 0.0,
        ).animate(
          // set the animation to curve - fastOutSlowIn
          CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
        ),
        // translation tween
        translation = Tween<double>(
          begin: 0.0,
          end: 100.0,
        ).animate(
          // set the animation to curve - elasticOut
          CurvedAnimation(parent: controller, curve: Curves.elasticOut),
        ),
        super(key: key);

  // declare animation constants for controller, scale and translation
  final AnimationController controller;
  final Animation<double> scale;
  final Animation<double> translation;

  // Animation builder
  build(context) {
    return AnimatedBuilder(
        // set the animation to the controller
        animation: controller,
        builder: (context, builder) {
          // return a stack
          return Stack(
            // center align everything
            alignment: Alignment.center,
            children: [
              // Positioned Condensor button
              Positioned(
                // position from the top 530
                top: 530,
                // call build button and pass all params
                child: _buildButton(
                    0, "assets/images/cond_pump.jpg", "Condensor", 43),
              ),
              // Positioned Cooler button
              Positioned(
                // position from the top 530
                top: 530,
                // call build button and pass all params
                child: _buildButton(
                    45, "assets/images/cooler_rsw.jpg", "Cooler", 44),
              ),
              // Positioned Tank button
              Positioned(
                // position from the top 530
                top: 530,
                // call build button and pass all params
                child:
                    _buildButton(90, "assets/images/antarctic.jpg", "Tank", 45),
              ),
              // Positioned Inverter button
              Positioned(
                // position from the top 530
                top: 530,
                // call build button and pass all params
                child: _buildButton(
                    135, "assets/images/inverter.jpg", "Inverter", 39),
              ),
              // Positioned Panel button
              Positioned(
                // position from the top 530
                top: 530,
                // call build button and pass all params
                child:
                    _buildButton(180, "assets/images/panel.JPG", "Panel", 33),
              ),
              // Positioned Other button
              Positioned(
                // position from the top 530
                top: 530,
                child: _buildButton(
                    225, "assets/images/rsw_plant.jpg", "Other", 45),
              ),
              // Positioned Compressor button
              Positioned(
                // position from the top 530
                top: 530,
                // call build button and pass all params
                child: _buildButton(
                    270, "assets/images/rsw_compressor.jpg", "Compressor", 38),
              ),
              // Positioned Circ Pump button
              Positioned(
                // position from the top 530
                top: 530,
                // call build button and pass all params
                child: _buildButton(
                    315, "assets/images/circ_pump.jpg", "Circ Pump", 45),
              ),
              // Positioned button for closing menu
              Positioned(
                // position from the top 530
                top: 530,
                // use transform.scale to set the scale value
                child: Transform.scale(
                  // set scale to scale.value - 1
                  scale: scale.value - 1,
                  // set the child to the FAB
                  child: FloatingActionButton(
                    // use the cancel icon
                    child: Icon(Icons.cancel),
                    // on press call _close
                    onPressed: _close,
                    // set color to red
                    backgroundColor: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
              ),
              // Positioned button for opening menu
              Positioned(
                // position from the top 530
                top: 530,
                // use transform.scale to set the scale value
                child: Transform.scale(
                    // set scale to scale.value
                    scale: scale.value,
                    // set the child to the FAB
                    child: FloatingActionButton(
                      // use the circle icon
                      child: Icon(Icons.circle_outlined),
                      // on press call _open
                      onPressed: _open,
                      // set color to red
                      backgroundColor: Color.fromARGB(255, 255, 0, 0),
                    )),
              ),
            ],
          );
        });
  }

  // function to build a button
  _buildButton(double angle, String image, String label, double width) {
    // declare radians using angle parameter
    final double rad = radians(angle);
    // return a transform
    return Transform(
        // pass a transform matrix and calculate the translation based on x, y value from center point of circle
        transform: Matrix4.identity()
          ..translate(
            (translation.value) * cos(rad),
            (translation.value) * sin(rad),
          ),
        // add a child stack and setup a container for the button setup
        child: Stack(
          children: [
            Container(
              // height  and width of button
              height: 70,
              width: 70,
              // use an extended FAB to fit everything in the circle
              child: FloatingActionButton.extended(
                // entended allows for use of label and set it as a column
                label: Column(
                  children: [
                    // create a container child
                    Container(
                      // set the width of the image to width from param
                      width: width,
                      // setup box decoration for border control
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                      // set child to asset image using image param
                      child: Image.asset(image),
                    ),
                    // create a text child
                    Text(
                      // pass label param for body of text
                      label,
                      // align it center and style it
                      textAlign: TextAlign.center,
                      textScaleFactor: 0.7,
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.2,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                // set background color to red
                backgroundColor: Color.fromARGB(255, 255, 0, 0),
                // on pressed close for now
                onPressed: _close,
              ),
            )
          ],
        ));
  }

  // _open function
  _open() {
    // runs animation forward
    controller.forward();
  }

  // _close function
  _close() {
    // run animation in reverse
    controller.reverse();
  }
}
