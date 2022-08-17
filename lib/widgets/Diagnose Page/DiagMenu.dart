import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DiagMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // return menusetup class
      child: MenuSetup(),
    );
  }
}

class MenuSetup extends StatefulWidget {
  @override
  _MenuSetupState createState() => _MenuSetupState();
}

class _MenuSetupState extends State<MenuSetup> {
  @override
  Widget build(BuildContext context) {
    double spacer = ResponsiveValue(
      context,
      defaultValue: 20.0,
      valueWhen: const [
        Condition.smallerThan(
          name: MOBILE,
          value: 20.0,
        ),
        Condition.largerThan(
          name: TABLET,
          value: 30.0,
        )
      ],
    ).value as double;
    // setup a container to hold all the buttons
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            // wrap all the buttons and set the spacings
            child: Wrap(
              direction: Axis.horizontal,
              spacing: spacer,
              runSpacing: spacer,
              children: <Widget>[
                // Compressor Button
                _buildCardItem(context, "assets/images/rsw_compressor.jpg",
                    "Compressor", 50, 5, "comp"),
                // Circ Pump Button
                _buildCardItem(context, "assets/images/circ_pump.jpg",
                    "Circ Pump", 50, 5, "circ"),
                // Condenser Button
                _buildCardItem(context, "assets/images/cond_pump.jpg",
                    "Condenser", 50, 5, "cond"),
                // Cooler Button
                _buildCardItem(context, "assets/images/cooler_rsw.jpg",
                    "Cooler", 50, 10, "cool"),
                // Inverter Button
                _buildCardItem(context, "assets/images/inverter.jpg",
                    "Inverter", 45, 10, "inv"),
                // Panel Button
                _buildCardItem(context, "assets/images/panel.JPG", "Panel", 35,
                    15, "panel"),
                // Tank Button
                _buildCardItem(context, "assets/images/antarctic.jpg", "Tank",
                    50, 10, "tank"),
                // Other Button
                _buildCardItem(context, "assets/images/rsw_plant.jpg", "Other",
                    50, 10, "other"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// method to build buttons
_buildCardItem(BuildContext context, String image, String title, double width,
    double gap, String type) {
  // setup a gesture detector on a card
  return GestureDetector(
    child: Card(
      // set shape to rounded rectangle
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Colors.white, width: 2.5),
      ),
      elevation: 10,
      color: Color.fromARGB(255, 255, 0, 0),
      child: Container(
        width: ResponsiveValue(
          context,
          defaultValue: 280.0,
          valueWhen: const [
            Condition.smallerThan(
              name: MOBILE,
              value: 170.0,
            ),
            Condition.largerThan(
              name: TABLET,
              value: 300.0,
            )
          ],
        ).value,
        height: ResponsiveValue(
          context,
          defaultValue: 120.0,
          valueWhen: const [
            Condition.smallerThan(
              name: MOBILE,
              value: 100.0,
            ),
            Condition.largerThan(
              name: TABLET,
              value: 140.0,
            )
          ],
        ).value,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // return a list tile with an image and text
            ListTile(
              // printing type of button when tapped
              onTap: () => {botChatEvent(context)},
              contentPadding: EdgeInsets.only(left: 15),
              // gap is from params
              horizontalTitleGap: gap,
              // use a constrained box to display images
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: width,
                  minHeight: 50,
                  maxWidth: 80,
                  maxHeight: 80,
                ),
                // put the image in a container in the box
                child: Container(
                  // setup box decoration for border control
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.5),
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  // set child to asset image using image param
                  child: Image.asset(image),
                ),
              ),
              // display title text
              title: Text(
                // title is passed in params
                title,
                // style the text and position
                textScaleFactor: ResponsiveValue(
                  context,
                  defaultValue: 1.4,
                  valueWhen: const [
                    Condition.smallerThan(
                      name: MOBILE,
                      value: 0.9,
                    ),
                    Condition.largerThan(
                      name: TABLET,
                      value: 1.5,
                    )
                  ],
                ).value,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

botChatEvent(BuildContext context) {
  Navigator.pushNamed(context, "/BotScreen");
}
