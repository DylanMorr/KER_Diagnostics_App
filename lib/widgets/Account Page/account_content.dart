import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AccountContent extends StatelessWidget {
  const AccountContent({Key? key}) : super(key: key);

  // Main account page content build
  @override
  Widget build(BuildContext context) {
    // set the page title
    final accountTitle = "Welcome to your Account Page".toUpperCase();
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
                  accountTitle,
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
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: ResponsiveValue(
                    context,
                    defaultValue: 80.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 50.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 90.0,
                      )
                    ],
                  ).value,
                ),
                Text(
                  '--- Setup account page ---',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 20.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 16.0,
                          ),
                          Condition.largerThan(
                            name: TABLET,
                            value: 22.0,
                          )
                        ],
                      ).value,
                      fontWeight: FontWeight.bold),
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
