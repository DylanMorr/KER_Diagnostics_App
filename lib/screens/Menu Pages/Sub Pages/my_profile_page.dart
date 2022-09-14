import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Profile%20Page/my__profile_form.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/Sub%20Page%20Widgets/Profile%20Page/profile_drawings.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/heading_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: 40),
        foregroundColor: Colors.black,
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Stack(
          children: <Widget>[
            HeadingBar(icon: Icons.account_circle, title: "My Profile"),
            ProfileForm(),
            ProfileDrawings(),
          ],
        ),
      ),
    );
  }
}
