import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/buttonBuilder.dart';

void openCausesFixesDialog(BuildContext context, String title, String type,
    String causes, String fixes) {
  // Create a AlertDialog.
  AlertDialog dialog = AlertDialog(
    insetPadding: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
      side: BorderSide(width: 2.5, color: Colors.black),
    ),
    actions: [
      Container(
          color: Colors.white,
          width: 420,
          padding: EdgeInsets.only(left: 10),
          child: Wrap(
            spacing: 150,
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
      Divider(
        color: Color.fromARGB(255, 181, 181, 181),
        indent: 10,
        endIndent: 10,
        thickness: 1,
      ),
      Container(
        color: Colors.white,
        width: 420,
        padding: EdgeInsets.only(bottom: 5, left: 10, top: 4),
        child: Text(
          "You have selected " +
              type +
              ".\nDisplayed below is a list of causes and fixes, if none of these work please get in touch by clicking Contact Now or Continue to exit.",
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
      ),
      Divider(
        color: Color.fromARGB(255, 181, 181, 181),
        indent: 10,
        endIndent: 10,
        thickness: 1,
      ),
      Container(
        color: Colors.white,
        width: 420,
        padding: EdgeInsets.only(left: 10),
        child: Text(
          "Causes:",
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        color: Colors.white,
        width: 420,
        padding: EdgeInsets.only(bottom: 20, left: 18, top: 5),
        child: Text(
          causes,
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        color: Colors.white,
        width: 420,
        padding: EdgeInsets.only(left: 10),
        child: Text(
          "Fixes:",
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        color: Colors.white,
        width: 420,
        padding: EdgeInsets.only(bottom: 40, left: 18, top: 5),
        child: Text(
          fixes,
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        width: 420,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Wrap(
              spacing: 20,
              children: [
                ButtonBuilder(
                    title: "Continue", choice: "continue", section: 9),
                ButtonBuilder(
                    title: "Contact Now", choice: "contact", section: 9)
              ],
            ),
          ],
        ),
      ),
    ],
  );

  // Call showDialog function.
  Future futureValue = showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      });
  futureValue.then((value) {
    print("Return value: " + value.toString()); // true/false
  });
}
