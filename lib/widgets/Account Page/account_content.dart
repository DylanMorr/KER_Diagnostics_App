import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/utilities/text_styling.dart';
import 'package:sizer/sizer.dart';

class AccountContent extends StatelessWidget {
  const AccountContent({Key? key}) : super(key: key);

  // Main account page content build
  @override
  Widget build(BuildContext context) {
    // set the page title
    final diagnosticTitle = "Welcome to your Account Page".toUpperCase();
    // return the content in a container with a list view
    return Container(
      child: ListView(
        // set the padding
        padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 30.0),
        children: <Widget>[
          // container holding all content
          Container(
            // set padding on container
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            // create a column child
            child: Column(
              // align to the center
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // create a text widget with the title and align to the center
                Text(
                  diagnosticTitle,
                  style: Style.diagTitle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  '--- Setup account page ---',
                  style: Style.diagTitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
