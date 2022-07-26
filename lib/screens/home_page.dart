import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/HomeBackground.dart';
import 'package:ker_diagnostics_app/widgets/HomeContent.dart';
import 'package:ker_diagnostics_app/widgets/HomeGradient.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // Main page build return
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 0, 0, 255),
        child: Stack(
          // Return the background, gradient and content widgets
          children: <Widget>[
            HomeBackground(),
            HomeGradient(),
            HomeContent(),
          ],
        ),
      ),
    );
  }
}
