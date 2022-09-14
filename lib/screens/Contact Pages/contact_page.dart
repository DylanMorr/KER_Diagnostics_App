import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Contact%20Page/contact_content.dart';

class ContactPage extends StatefulWidget {
  @override
  State<ContactPage> createState() => _ContactPageState();

  const ContactPage({Key? key}) : super(key: key);
}

class _ContactPageState extends State<ContactPage> {
  // Main page build return
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 255, 255, 255),
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
