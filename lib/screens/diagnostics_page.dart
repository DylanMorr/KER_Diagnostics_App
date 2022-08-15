import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Diagnose%20Page/DiagContent.dart';
import 'package:ker_diagnostics_app/widgets/Diagnose%20Page/DiagMenu.dart';
import 'package:ker_diagnostics_app/widgets/testbot.dart';

class DiagnosticPage extends StatelessWidget {
  const DiagnosticPage({Key? key}) : super(key: key);

  // Main page build return
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 0, 0, 255),
        child: Stack(
          // Return both the Content and the Menu widget
          children: <Widget>[DiagContent(), DiagMenu()],
          //children: <Widget>[BotTest()],
        ),
      ),
    );
  }
}
