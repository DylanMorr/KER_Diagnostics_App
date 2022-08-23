import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ker_diagnostics_app/screens/menu_page.dart';
import 'package:ker_diagnostics_app/screens/contact_page.dart';
import 'package:ker_diagnostics_app/screens/diagnostics_page.dart';
import 'package:ker_diagnostics_app/screens/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BotNavBar extends StatefulWidget {
  final int selectedIndex;
  BotNavBar({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    // set the selected index to 0 so starting page is HomePage
    _selectedIndex = widget.selectedIndex;
  }

  // Create a list of pages to navigate through
  final List<Widget> index = [
    HomePage(),
    DiagnosticPage(),
    ContactPage(),
    MenuPage()
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
    double horPad = ResponsiveValue(
      context,
      defaultValue: 50.0,
      valueWhen: const [
        Condition.smallerThan(
          name: MOBILE,
          value: 15.0,
        ),
        Condition.largerThan(
          name: TABLET,
          value: 70.0,
        )
      ],
    ).value as double;
    double verPad = ResponsiveValue(
      context,
      defaultValue: 20.0,
      valueWhen: const [
        Condition.smallerThan(
          name: MOBILE,
          value: 14.0,
        ),
        Condition.largerThan(
          name: TABLET,
          value: 30.0,
        )
      ],
    ).value as double;
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
          color: Color.fromARGB(255, 0, 90, 172),
        ),
        // Using a safearea widget to avoid intrusions and issues with padding
        child: SafeArea(
          // add a padding widget
          child: Padding(
            // setup padding
            padding: EdgeInsets.symmetric(horizontal: horPad, vertical: verPad),
            // add the GNav which is a nav bar widget called Google Nav Bar
            child: GNav(
              // Set hover color to blue
              hoverColor: Color.fromARGB(255, 255, 255, 255),
              // Add easeOutExpo curve animation
              curve: Curves.easeOutExpo,
              // Set animation duration to 500 ms
              duration: Duration(milliseconds: 500),
              // Gap between icon and text for each tab
              gap: 8,
              // Unselected icon color is white
              color: Colors.white,
              // text styling
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: ResponsiveValue(
                  context,
                  defaultValue: 20.0,
                  valueWhen: const [
                    Condition.smallerThan(
                      name: MOBILE,
                      value: 14.0,
                    ),
                    Condition.largerThan(
                      name: TABLET,
                      value: 24.0,
                    )
                  ],
                ).value,
              ),
              // active color also white
              activeColor: Colors.black,
              // Set the icon size
              iconSize: ResponsiveValue(
                context,
                defaultValue: 32.0,
                valueWhen: const [
                  Condition.smallerThan(
                    name: MOBILE,
                    value: 24.0,
                  ),
                  Condition.largerThan(
                    name: TABLET,
                    value: 34.0,
                  )
                ],
              ).value,
              // Set the selected tab background to be blue
              tabBackgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                  icon: Icons.menu,
                  text: 'Menu',
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
