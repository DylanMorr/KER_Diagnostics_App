import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Privacy%20Page/privacy_content.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
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
          child: PrivacyContent(),
        ),
      ),
    );
  }
}
