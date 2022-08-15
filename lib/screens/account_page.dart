import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Account%20Page/account_content.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  // Main page build return
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 0, 0, 255),
        child: Stack(
          children: <Widget>[
            // Return the AccountContent widget
            AccountContent(),
          ],
        ),
      ),
    );
  }
}
