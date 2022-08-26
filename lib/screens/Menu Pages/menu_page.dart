import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/menu_content.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  // Main page build return
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Stack(
          children: <Widget>[
            // Return the MenuContent widget
            MenuContent(),
          ],
        ),
      ),
    );
  }
}
