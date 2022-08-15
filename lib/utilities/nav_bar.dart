import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ker_diagnostics_app/screens/account_page.dart';
import 'package:ker_diagnostics_app/screens/contact_page.dart';
import 'package:ker_diagnostics_app/screens/diagnostics_page.dart';
import 'package:ker_diagnostics_app/screens/home_page.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  // set the selected index to 0 so starting page is HomePage
  int _selectedIndex = 0;

  // Create a list of pages to navigate through
  final List<Widget> index = [
    HomePage(),
    DiagnosticPage(),
    ContactPage(),
    AccountPage()
  ];

  // method to track when bar is tapped
  void onTappedBar(int index) {
    // when tapped set the state of selectedindex = index
    setState(() {
      _selectedIndex = index;
    });
  }

  // Main nav bar widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // In the body tag using the center widget set the child to show which page the selected index is currently on
      body: Center(
        // index is the list of pages
        child: index.elementAt(_selectedIndex),
      ),
      // create a bottomNavBar container
      bottomNavigationBar: Container(
        // set the main color to red
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 0, 0),
        ),
        // Using a safearea widget to avoid intrusions and issues with padding
        child: SafeArea(
          // add a padding widget
          child: Padding(
            // setup padding
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 14),
            // add the GNav which is a nav bar widget called Google Nav Bar
            child: GNav(
              // Set hover color to blue
              hoverColor: Color.fromARGB(255, 0, 0, 255),
              // Add easeOutExpo curve animation
              curve: Curves.easeOutExpo,
              // Set animation duration to 500 ms
              duration: Duration(milliseconds: 500),
              // Gap between icon and text for each tab
              gap: 8,
              // Unselected icon color is white
              color: Colors.white,
              // active color also white
              activeColor: Colors.white,
              // Set the icon size
              iconSize: 24,
              // Set the selected tab background to be blue
              tabBackgroundColor: Color.fromARGB(255, 0, 0, 255),
              // set the padding on the tabs
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              // Setup the tabs
              tabs: [
                // Home tab
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                // Diagnose tab
                GButton(
                  icon: Icons.build,
                  text: 'Diagnose',
                ),
                // Contact tab
                GButton(
                  icon: Icons.call,
                  text: 'Contact',
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: 'Account',
                ),
              ],
              // set the selected index to the variable _selectedIndex
              selectedIndex: _selectedIndex,
              // when the tab is changed pass the index and set the state of _selectedIndex to index
              onTabChange: (index) {
                // set state of selected index to index
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
