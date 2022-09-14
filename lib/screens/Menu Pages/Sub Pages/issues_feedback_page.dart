import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Issues%20Feedback%20Page/issues_feedback_content.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/heading_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class IssuesFeedbackPage extends StatefulWidget {
  const IssuesFeedbackPage({Key? key}) : super(key: key);

  @override
  State<IssuesFeedbackPage> createState() => _IssuesFeedbackPageState();
}

class _IssuesFeedbackPageState extends State<IssuesFeedbackPage> {
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
      body: Stack(
        children: [
          IssuesContent(),
        ],
      ),
    );
  }
}
