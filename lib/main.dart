import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/screens/Contact%20Pages/serviceCharges.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/about_page.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/faqs_page.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/help_page.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/issues_feedback_page.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/my_profile_page.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/privacy_page.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/rate_page.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/security_page.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/share_page.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/Sub%20Pages/terms_conds_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:ker_diagnostics_app/screens/Menu%20Pages/menu_page.dart';
import 'package:ker_diagnostics_app/screens/Contact%20Pages/contact_page.dart';
import 'package:ker_diagnostics_app/screens/Diagnostic%20Pages/diagnostics_page.dart';
import 'package:ker_diagnostics_app/screens/Home%20Pages/home_page.dart';
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
          breakpoints: const [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
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
        "/Menu": ((context) => MenuPage()),
        "/BotScreen": ((context) => BotTest()),
        "/Charges": ((context) => ServiceCharges()),
        "/Profile": ((context) => MyProfilePage()),
        "/Privacy": ((context) => PrivacyPage()),
        "/About": ((context) => AboutPage()),
        "/Help": ((context) => HelpPage()),
        "/TermsConds": ((context) => TermsCondsPage()),
        "/Security": ((context) => SecurityPage()),
        "/IssuesFeed": ((context) => IssuesFeedbackPage()),
        "/Faqs": ((context) => FaqsPage()),
        "/Rate": ((context) => RatePage()),
        "/Share": ((context) => SharePage()),
      },
      // Set home to BotNavBar
      home: BotNavBar(
        selectedIndex: 0,
      ),
    );
  }
}
