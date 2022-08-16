import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ker_diagnostics_app/screens/account_page.dart';
import 'package:ker_diagnostics_app/screens/contact_page.dart';
import 'package:ker_diagnostics_app/screens/diagnostics_page.dart';
import 'package:ker_diagnostics_app/screens/home_page.dart';
import 'package:ker_diagnostics_app/utilities/nav_bar.dart';
import 'package:ker_diagnostics_app/widgets/testbot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'KER APP',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: <String, WidgetBuilder>{
            "/Home": ((context) => HomePage()),
            "/Diagnose": ((context) => DiagnosticPage()),
            "/Contact": ((context) => ContactPage()),
            "/Account": ((context) => AccountPage()),
            "/BotScreen": ((context) => BotTest()),
          },
          // Set home to BotNavBar
          home: BotNavBar(
            selectedIndex: 0,
          ),
        );
      },
    );
  }
}
