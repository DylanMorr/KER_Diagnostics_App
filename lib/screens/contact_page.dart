import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/ContactContent.dart';

class ContactPage extends StatefulWidget {
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  // Main page build return
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 0, 0, 255),
        child: Stack(
          children: <Widget>[
            // Return the ContactContent widget
            ContactContent(),
          ],
        ),
      ),
    );
  }
}
