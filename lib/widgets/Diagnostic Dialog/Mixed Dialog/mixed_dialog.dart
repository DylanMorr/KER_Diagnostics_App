import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/buttonBuilder.dart';

void openMixedDialog(BuildContext context) {
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
                "Mixed Issue",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 65,
                height: 25,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Color.fromARGB(255, 255, 0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      side: BorderSide(width: 2.5, color: Colors.black),
                    ),
                    textStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop("Exited");
                  },
                  child: Text('Back'),
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
        padding: EdgeInsets.only(bottom: 40, left: 10, top: 4),
        child: Text(
          "Which of the following options best describes your problem?",
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
                    title: "High Liquid Level",
                    choice: "high_liquid_level",
                    section: 7),
                ButtonBuilder(
                    title: "Low Liquid Level",
                    choice: "low_liquid_level",
                    section: 7),
              ],
            ),
            Wrap(
              spacing: 20,
              children: [
                ButtonBuilder(
                    title: "System Won't Start",
                    choice: "system_wont_start",
                    section: 7),
                ButtonBuilder(
                    title: "Wire Break", choice: "wire_break", section: 7),
              ],
            ),
            ButtonBuilder(
                title: "High Superheat", choice: "high_superheat", section: 7),
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
