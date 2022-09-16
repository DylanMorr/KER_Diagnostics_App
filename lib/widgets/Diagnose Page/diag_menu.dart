import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Circ%20Pump%20Dialog/circ_pump_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Compressor%20Dialog/comp_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Condenser%20Dialog/condenser_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Cooler%20Dialog/cooler_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Inverter%20Dialog/inverter_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Mixed%20Dialog/mixed_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Panel%20Dialog/panel_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Tank%20Dialog/tank_dialog.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
    double spacer = ResponsiveValue(
      context,
      defaultValue: 120.0,
      valueWhen: const [
        Condition.smallerThan(
          name: MOBILE,
          value: 60.0,
        ),
      ],
    ).value as double;
    return Column(
      children: [
        SizedBox(
          height: 185,
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
                      style: TextStyle(
                          fontSize: ResponsiveValue(
                            context,
                            defaultValue: 19.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 16.0,
                              ),
                            ],
                          ).value,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: ResponsiveValue(
                        context,
                        defaultValue: 24.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 15.0,
                          ),
                        ],
                      ).value,
                      width: ResponsiveValue(
                        context,
                        defaultValue: 36.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 25.0,
                          ),
                        ],
                      ).value,
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
                  style: TextStyle(
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 16.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 15.0,
                        ),
                      ],
                    ).value,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 15,
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 19.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 16.0,
                        ),
                      ],
                    ).value,
                  ),
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 19.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 16.0,
                        ),
                      ],
                    ).value,
                  ),
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 19.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 16.0,
                        ),
                      ],
                    ).value,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 25,
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 19.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 16.0,
                        ),
                      ],
                    ).value,
                  ),
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 19.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 16.0,
                        ),
                      ],
                    ).value,
                  ),
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 19.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 16.0,
                        ),
                      ],
                    ).value,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Wrap(
          spacing: spacer,
          children: [
            Column(
              children: [
                _buildButton("assets/images/panel.JPG", 50, "panel"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Panel',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 19.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 16.0,
                        ),
                      ],
                    ).value,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                _buildButton("assets/images/rsw_plant.jpg", 65, "mixed"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Mixed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 19.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 16.0,
                        ),
                      ],
                    ).value,
                  ),
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
          height: ResponsiveValue(
            context,
            defaultValue: 120.0,
            valueWhen: const [
              Condition.smallerThan(
                name: MOBILE,
                value: 90.0,
              ),
            ],
          ).value,
          width: ResponsiveValue(
            context,
            defaultValue: 120.0,
            valueWhen: const [
              Condition.smallerThan(
                name: MOBILE,
                value: 90.0,
              ),
            ],
          ).value,
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
                  width: ResponsiveValue(
                    context,
                    defaultValue: width + 16,
                    valueWhen: [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: width,
                      ),
                    ],
                  ).value,
                  // set child to asset image using image param
                  child: Image.asset(image),
                ),
              ],
            ),
            // set background color to white
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            // on pressed call menu choice function and pass in choice
            onPressed: () => {onPressEvent(context, choice)},
          ),
        ),
      ],
    );
  }
}

onPressEvent(BuildContext context, String choice) {
  print("choice: " + choice);
  switch (choice) {
    case "comp":
      {
        openCompDialog(context);
      }
      break;

    case "circ":
      {
        openCircPumpDialog(context);
      }
      break;

    case "cond":
      {
        openCondenserDialog(context);
      }
      break;

    case "cool":
      {
        openCoolerDialog(context);
      }
      break;

    case "tank":
      {
        openTankDialog(context);
      }
      break;

    case "inv":
      {
        openInverterDialog(context);
      }
      break;

    case "panel":
      {
        openPanelDialog(context);
      }
      break;

    case "mixed":
      {
        openMixedDialog(context);
      }
      break;

    default:
      {
        print("failed");
      }
  }
}
