import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Faqs%20Page/account_page.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Faqs%20Page/diagnose_page.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Faqs%20Page/general_page.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Faqs%20Page/security_page.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Faqs%20Page/security_page.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/heading_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FaqsPage extends StatefulWidget {
  const FaqsPage({Key? key}) : super(key: key);

  @override
  State<FaqsPage> createState() => _FaqsPageState();
}

class _FaqsPageState extends State<FaqsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
            SizedBox(height: 30),
            // the tab bar with 4 items
            SizedBox(
              height: 50,
              child: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                overlayColor: MaterialStateProperty.all(Colors.white),
                indicatorWeight: 0.0,
                indicatorPadding: const EdgeInsets.all(5),
                indicator: BoxDecoration(
                  color: Color.fromARGB(255, 0, 90, 172),
                ),
                tabs: [
                  Tab(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 0, 90, 172),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("General"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 0, 90, 172),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Account"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 0, 90, 172),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Diagnosing"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 0, 90, 172),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Security"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // Pass General Question here
                  Container(
                    color: Colors.white,
                    child: GeneralFaq(),
                  ),
                  // pass account questions here
                  Container(
                    color: Colors.white,
                    child: AccountFaq(),
                  ),
                  // pass diagnosing questions here
                  Container(
                    color: Colors.white,
                    child: DiagnoseFaq(),
                  ),
                  // pass security questions here
                  Container(
                    color: Colors.white,
                    child: SecurityFaq(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
