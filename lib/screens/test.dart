import 'package:flutter/material.dart';

class DiagnosticMenu extends StatelessWidget {
  const DiagnosticMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MenuBuilder();
  }
}

class MenuBuilder extends StatefulWidget {
  const MenuBuilder({Key? key}) : super(key: key);

  @override
  State<MenuBuilder> createState() => _MenuBuilderState();
}

class _MenuBuilderState extends State<MenuBuilder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 187,
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Self-Checks',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 15,
                      width: 25,
                      child: Image(
                        image: AssetImage('assets/images/freeBadge.JPG'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Assess your vessel status in 5 minutes',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                _buildButton("assets/images/rsw_compressor.jpg", 75, "comp"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Compressor',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            Column(
              children: [
                _buildButton("assets/images/circ_pump.jpg", 80, "circ"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Circ Pump',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            Column(
              children: [
                _buildButton("assets/images/cond_pump.jpg", 100, "cond"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Condensor',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                _buildButton("assets/images/cooler_rsw.jpg", 95, "cool"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Cooler',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            Column(
              children: [
                _buildButton("assets/images/antarctic.jpg", 75, "tank"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tank',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            Column(
              children: [
                _buildButton("assets/images/inverter.jpg", 65, "inv"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Inverter',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Wrap(
          spacing: 60,
          children: [
            Column(
              children: [
                _buildButton("assets/images/panel.JPG", 50, "panel"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Panel',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            Column(
              children: [
                _buildButton("assets/images/rsw_plant.jpg", 65, "other"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Other',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

// function to build a button
  _buildButton(String image, double width, String type) {
    // choice set to type behind each button
    String choice = type;
    // return a transform
    return Stack(
      children: [
        Container(
          // height  and width of button
          height: 90,
          width: 90,
          // use an extended FAB to fit everything in the circle
          child: FloatingActionButton.extended(
            heroTag: null,
            elevation: 0,
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
            // entended allows for use of label and set it as a column
            label: Column(
              children: [
                // create a container child
                Container(
                  // set the width of the image to width from param
                  width: width,
                  // set child to asset image using image param
                  child: Image.asset(image),
                ),
              ],
            ),
            // set background color to white
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            // on pressed call menu choice function and pass in choice
            onPressed: () => {botChatEvent(context, choice)},
          ),
        ),
      ],
    );
  }
}

botChatEvent(BuildContext context, String choice) {
  print(choice);
  Navigator.pushNamed(context, "/BotScreen");
}

// function to choose what aspect you have a problem with
_menuChoice(String type) {
  String choice = type;

  switch (choice) {
    case "cond":
      print("You have chosen Condenser");
      break;
    case "cool":
      print("You have chosen Cooler");
      break;
    case "tank":
      print("You have chosen Tank");
      break;
    case "inv":
      print("You have chosen inverter");
      break;
    case "panel":
      print("You have chosen Panel");
      break;
    case "other":
      print("You have chosen Other");
      break;
    case "comp":
      print("You have chosen Compressor");
      break;
    case "circ":
      print("You have chosen Circ Pump");
      break;
    default:
      print("No Choice");
  }
}
