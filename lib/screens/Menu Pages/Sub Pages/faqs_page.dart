import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/headingBar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FaqsPage extends StatefulWidget {
  const FaqsPage({Key? key}) : super(key: key);

  @override
  State<FaqsPage> createState() => _FaqsPageState();
}

class _FaqsPageState extends State<FaqsPage> {
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
          HeadingBar(icon: Icons.question_answer, title: "FAQs"),
        ],
      ),
    );
  }
}
