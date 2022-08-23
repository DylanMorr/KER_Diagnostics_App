import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MenuContent extends StatelessWidget {
  const MenuContent({Key? key}) : super(key: key);

  // Main account page content build
  @override
  Widget build(BuildContext context) {
    // return the content in a list view
    return ListView(
      children: <Widget>[
        // Create a container inside a Gesture Detector
        // This allows us to capture whenever the container is tapped and take us to the profile page
        GestureDetector(
          onTap: () {
            print("My Profile Dectection");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: ResponsiveValue(
              context,
              defaultValue: 90.0,
              valueWhen: const [
                Condition.smallerThan(
                  name: MOBILE,
                  value: 70.0,
                ),
              ],
            ).value,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 30,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 30,
                            child: Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'My Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 24.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 18.0,
                                  ),
                                ],
                              ).value,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30),
            margin: EdgeInsets.only(top: 24),
          ),
        ),
        // Create a container inside a Gesture Detector
        // This allows us to capture whenever the container is tapped and take us to the privary policy page
        GestureDetector(
          onTap: () {
            print("Privacy Policy Dectection");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: ResponsiveValue(
              context,
              defaultValue: 90.0,
              valueWhen: const [
                Condition.smallerThan(
                  name: MOBILE,
                  value: 70.0,
                ),
              ],
            ).value,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 30,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 30,
                            child: Icon(
                              Icons.privacy_tip,
                              size: 50,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 24.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 18.0,
                                  ),
                                ],
                              ).value,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30),
            margin: EdgeInsets.only(top: 24),
          ),
        ),
        // Create a container inside a Gesture Detector
        // This allows us to capture whenever the container is tapped and take us to the about app page
        GestureDetector(
          onTap: () {
            print("About the app Dectection");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: ResponsiveValue(
              context,
              defaultValue: 90.0,
              valueWhen: const [
                Condition.smallerThan(
                  name: MOBILE,
                  value: 70.0,
                ),
              ],
            ).value,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 30,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 30,
                            child: Icon(
                              Icons.settings,
                              size: 50,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'About the app',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 24.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 18.0,
                                  ),
                                ],
                              ).value,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30),
            margin: EdgeInsets.only(top: 24),
          ),
        ),
        // Create a container inside a Gesture Detector
        // This allows us to capture whenever the container is tapped and take us to the help page
        GestureDetector(
          onTap: () {
            print("Help Dectection");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: ResponsiveValue(
              context,
              defaultValue: 90.0,
              valueWhen: const [
                Condition.smallerThan(
                  name: MOBILE,
                  value: 70.0,
                ),
              ],
            ).value,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 30,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 30,
                            child: Icon(
                              Icons.help,
                              size: 50,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Help',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 24.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 18.0,
                                  ),
                                ],
                              ).value,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30),
            margin: EdgeInsets.only(top: 24),
          ),
        ),
        Column(
          children: [
            SizedBox(height: 380),
            Container(
              height: 40,
              width: ResponsiveValue(
                context,
                defaultValue: 130.0,
                valueWhen: const [
                  Condition.smallerThan(
                    name: MOBILE,
                    value: 110.0,
                  ),
                ],
              ).value,
              // create the elevated button
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300], elevation: 0),
                // Set the child to be a text widget with purpose of button
                child: Text(
                  'Log Out',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 20.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 16.0,
                          ),
                        ],
                      ).value,
                      fontWeight: FontWeight.bold),
                ),
                // On press send message to ker
                onPressed: () {
                  print("Logged out");
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
