import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/buttonBuilder.dart';

void openHighLowDialog(BuildContext context, String choice, String type) {
  String secondaryText = "You have selected " +
      choice +
      ".\nIs the temperature reading High or Low?";
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
                "Compressor Issue",
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
                    Navigator.of(context).pop();
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
          secondaryText,
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
                    title: "High", choice: "high_" + type, section: 8),
                ButtonBuilder(title: "Low", choice: "low_" + type, section: 8),
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
