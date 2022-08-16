import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
    // setup a container to hold all the buttons
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            // wrap all the buttons and set the spacings
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 10,
              runSpacing: 10,
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
        width: 170,
        height: 80,
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
                textScaleFactor: 0.9,
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
