import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/screens/contact_page.dart';
import 'package:ker_diagnostics_app/screens/diagnostics_page.dart';
import 'package:ker_diagnostics_app/utilities/nav_bar.dart';
import 'package:ker_diagnostics_app/utilities/text_styling.dart';
import 'package:ker_diagnostics_app/widgets/Home%20Page/app_summary.dart';
import 'package:ker_diagnostics_app/widgets/Home%20Page/separator.dart';

class HomeContent extends StatefulWidget {
  @override
  State<HomeContent> createState() => _HomeContentState();

  const HomeContent({Key? key}) : super(key: key);
}

class _HomeContentState extends State<HomeContent> {
  // home page main content build
  @override
  Widget build(BuildContext context) {
    // Overview section title
    final overviewTitle = "Overview".toUpperCase();
    // About section title
    final aboutTitle = "About KER Group".toUpperCase();
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
            // add padding
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 10),
            // create a column
            child: Column(
              // set alignment to start
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // text widget
                Text(
                  // shows Overview section title
                  overviewTitle,
                  style: Style.headerText,
                ),
                // seperator widget for the line under overview title
                Separator(),
                // text widget for overview description
                Text(
                    "Customer service is one of the most important aspects of any business and it is important to " +
                        "keep it at a high standard. But this can be difficult if there is a high volume of work and not " +
                        "enough engineers to take it on. This app is the answer to that problem. It allows the user to self " +
                        "diagnose the problem without an engineer being called out. This allows for faster customer service " +
                        "and reduces work labor and effort spent by a marginal value. Once the problem has been identified " +
                        "using this app one of our engineers can be sent out with exact details of the problem and how to fix it.",
                    style: Style.commonText),
                // space out content
                SizedBox(height: 15),
                // text widget for about section title
                Text(
                  aboutTitle,
                  style: Style.headerText,
                ),
                // seperator widget for the line under about title
                Separator(),
                // text widget for about ker description
                Text(
                  "KER Group was founded in 1995 by Eugene McBrearty and is based in Killybegs, County Donegal. KER has since " +
                      "grown into one of the leading project management and marine industry specialists providing innovative solutions " +
                      "to both onshore and offshore clients including: Marine, Pharmaceuticals, Food Processing, Gas and Oil Sectors worldwide.",
                  style: Style.commonText,
                ),
                GestureDetector(
                  child: Text("Diagnose Link"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BotNavBar(
                                  selectedIndex: 1,
                                )));
                  },
                ),
                GestureDetector(
                  child: Text("Contact Us Link"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BotNavBar(
                                  selectedIndex: 2,
                                )));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
