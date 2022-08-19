import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/utilities/nav_bar.dart';
import 'package:ker_diagnostics_app/widgets/Home%20Page/HomeScreenCard.dart';

class HomeContent extends StatefulWidget {
  @override
  State<HomeContent> createState() => _HomeContentState();

  const HomeContent({Key? key}) : super(key: key);
}

class _HomeContentState extends State<HomeContent> {
  // home page main content build
  @override
  Widget build(BuildContext context) {
    // return a container with a list view
    return Container(
      child: ListView(
        // add paddings
        padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          // Bring in the AppSummary widget
          AppSummary(),
          // create a container for all the text on the page
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Diagnose Service',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 5),
                Text(
                  'Use our tool to self-diagnose your vessel parts from anywhere yourself.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                          'Summon the tool',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        // On press send message to ker
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BotNavBar(
                                        selectedIndex: 1,
                                      )));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30, top: 10),
            margin: EdgeInsets.only(top: 35, bottom: 20),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer Support',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 5),
                Text(
                  'Not able to resolve your issue yet, no problem at all. We are available 24/7 to assist you.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                              fontSize: 14,
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
              ],
            ),
            padding: EdgeInsets.only(left: 30, top: 10),
            margin: EdgeInsets.only(bottom: 20),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Account',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 5),
                Text(
                  'Stay connected to the app to view your vessel drawings and other updates.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                          'Take me there',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        // On press send message to ker
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BotNavBar(
                                        selectedIndex: 3,
                                      )));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30, top: 10),
            margin: EdgeInsets.only(bottom: 20),
          ),
        ],
      ),
    );
  }
}
