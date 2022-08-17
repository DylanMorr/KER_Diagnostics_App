import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DiagContent extends StatelessWidget {
  const DiagContent({Key? key}) : super(key: key);

  // Main diagnostic page content build
  @override
  Widget build(BuildContext context) {
    // set the page title
    final diagnosticTitle = "Welcome to the Diagnostics Page".toUpperCase();
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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 26.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 20.0,
                        ),
                        Condition.largerThan(
                          name: TABLET,
                          value: 28.0,
                        )
                      ],
                    ).value,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // space out content
                SizedBox(
                  height: ResponsiveValue(
                    context,
                    defaultValue: 50.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 60.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 60.0,
                      )
                    ],
                  ).value,
                ),
                // setup a container with text describing the diagnostic idea
                Container(
                  // set width
                  width: ResponsiveValue(
                    context,
                    defaultValue: 330.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 280.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 280.0,
                      )
                    ],
                  ).value,
                  // set padding
                  padding: EdgeInsets.all(6),
                  // setup a box decoration for border control and box shadow
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 0, 0),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(4.0, 4.0),
                      ),
                    ],
                  ),
                  // set the child to be a text widget with information about the diagnostic page
                  child: Text(
                    'Here you can start diagnosing issues with your RSW plant and find a fix for the most common problems.',
                    textScaleFactor: ResponsiveValue(
                      context,
                      defaultValue: 1.4,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 1.1,
                        ),
                        Condition.largerThan(
                          name: TABLET,
                          value: 1.5,
                        )
                      ],
                    ).value,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                // Space out content
                SizedBox(
                  height: ResponsiveValue(
                    context,
                    defaultValue: 50.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 60.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 60.0,
                      )
                    ],
                  ).value,
                ),
                // create another text widget with instructions on how to get started
                Text(
                  'To get started chose from the menu below which part has a problem and you will be brought to our diagnostic chat bot which will guide you on how to fix your problem',
                  textScaleFactor: ResponsiveValue(
                    context,
                    defaultValue: 1.3,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 1.1,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 1.4,
                      )
                    ],
                  ).value,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
