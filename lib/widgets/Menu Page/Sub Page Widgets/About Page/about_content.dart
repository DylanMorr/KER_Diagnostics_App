import 'package:flutter/material.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/images/kerlogo.jpg"),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          padding: EdgeInsets.fromLTRB(20, 100, 20, 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromARGB(255, 224, 224, 224),
                width: 2.0,
              ),
            ),
          ),
          child: Row(
            children: [
              Wrap(
                spacing: 279,
                children: [
                  Text(
                    "Version",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "1.0.0",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromARGB(255, 224, 224, 224),
                width: 2.0,
              ),
            ),
          ),
          child: Row(
            children: [
              Wrap(
                spacing: 274,
                children: [
                  Text(
                    "Build",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "21.2.3.1",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 330),
          child: Text(
            "© KER. All Rights Reserved",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
