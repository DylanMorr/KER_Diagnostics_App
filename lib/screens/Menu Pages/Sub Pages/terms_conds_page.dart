import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Terms%20Conds%20Page/terms_conds_content.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/heading_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TermsCondsPage extends StatefulWidget {
  const TermsCondsPage({Key? key}) : super(key: key);

  @override
  State<TermsCondsPage> createState() => _TermsCondsPageState();
}

class _TermsCondsPageState extends State<TermsCondsPage> {
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      panEnabled: true,
      minScale: 0.5,
      maxScale: 4,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black, size: 40),
          foregroundColor: Colors.black,
        ),
        body: Container(
          child: TermsCondsContent(),
        ),
      ),
    );
  }
}
