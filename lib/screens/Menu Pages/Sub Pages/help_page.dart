import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/heading_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: 40),
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          HeadingBar(icon: Icons.help, title: "Help"),
        ],
      ),
    );
  }
}
