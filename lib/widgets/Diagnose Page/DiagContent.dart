import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/utilities/nav_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DiagContent extends StatelessWidget {
  const DiagContent({Key? key}) : super(key: key);

  // Main diagnostic page content build
  @override
  Widget build(BuildContext context) {
    double toolGuideSpacer = ResponsiveValue(
      context,
      defaultValue: 506.0,
      valueWhen: const [
        Condition.smallerThan(
          name: MOBILE,
          value: 170.0,
        ),
      ],
    ).value as double;
    double contactSpacer = ResponsiveValue(
      context,
      defaultValue: 411.0,
      valueWhen: const [
        Condition.smallerThan(
          name: MOBILE,
          value: 95.0,
        ),
      ],
    ).value as double;
    // return the content in a container with a list view
    return Container(
      child: ListView(
        // set the padding
        padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 30.0),
        children: <Widget>[
          SizedBox(
            height: ResponsiveValue(
              context,
              defaultValue: 648.0,
              valueWhen: const [
                Condition.smallerThan(
                  name: MOBILE,
                  value: 555.0,
                ),
              ],
            ).value,
          ),
          // create a container for all the text on the page
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: toolGuideSpacer,
                  children: [
                    Text(
                      'Tool guide',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveValue(
                          context,
                          defaultValue: 21.0,
                          valueWhen: const [
                            Condition.smallerThan(
                              name: MOBILE,
                              value: 18.0,
                            ),
                          ],
                        ).value,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 40,
                      width: 150,
                      // Setup box decoration for border control
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      // create the elevated button
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        // Set the child to be a text widget with purpose of button
                        child: Text(
                          'View Manual',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 17.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 14.0,
                                  ),
                                ],
                              ).value,
                              fontWeight: FontWeight.bold),
                        ),
                        // On press send message to ker
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BotNavBar(
                                        selectedIndex: 0,
                                      )));
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  'Having trouble using the app? \nUse this manual on the operations of the app',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 16.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 14.0,
                        ),
                      ],
                    ).value,
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30, top: 13),
            margin: EdgeInsets.only(top: 60, bottom: 15),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: 100,
            child: Wrap(
              runAlignment: WrapAlignment.center,
              spacing: contactSpacer,
              children: [
                Text(
                  'Still facing issues? \nWe are here to assist you.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 17.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 14.0,
                        ),
                      ],
                    ).value,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 40,
                  width: 150,
                  // Setup box decoration for border control
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  // create the elevated button
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    // Set the child to be a text widget with purpose of button
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ResponsiveValue(
                            context,
                            defaultValue: 17.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 14.0,
                              ),
                            ],
                          ).value,
                          fontWeight: FontWeight.bold),
                    ),
                    // On press send message to ker
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BotNavBar(
                                    selectedIndex: 2,
                                  )));
                    },
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30),
          ),
        ],
      ),
    );
  }
}
