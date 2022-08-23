import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/screens/serviceCharges.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      title: 'KER APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
        ),
      ),
      routes: <String, WidgetBuilder>{
        "/Home": ((context) => HomePage()),
        "/Diagnose": ((context) => DiagnosticPage()),
        "/Contact": ((context) => ContactPage()),
        "/Account": ((context) => AccountPage()),
        "/BotScreen": ((context) => BotTest()),
        "/Charges": ((context) => ServiceCharges()),
      },
      // Set home to BotNavBar
      home: BotNavBar(
        selectedIndex: 0,
      ),
    );
  }
}
