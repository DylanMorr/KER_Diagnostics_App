import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/utilities/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KER APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Set home to BotNavBar
      home: BotNavBar(),
    );
  }
}
