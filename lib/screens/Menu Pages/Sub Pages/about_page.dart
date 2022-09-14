import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/About%20Page/about_content.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/heading_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          HeadingBar(icon: Icons.info, title: "About the App"),
          SizedBox(
            height: 150,
          ),
          AboutContent(),
        ],
      ),
    );
  }
}
