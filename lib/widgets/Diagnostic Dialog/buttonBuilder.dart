import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/high_low_dialog.dart';

class ButtonBuilder extends StatefulWidget {
  final String title;
  final String choice;
  final int section;

  const ButtonBuilder(
      {Key? key,
      required this.title,
      required this.choice,
      required this.section})
      : super(key: key);

  @override
  State<ButtonBuilder> createState() => _ButtonBuilderState();
}

class _ButtonBuilderState extends State<ButtonBuilder> {
  late String _title;
  late String _choice;
  late int _section;

  @override
  void initState() {
    super.initState();
    _title = widget.title;
    _choice = widget.choice;
    _section = widget.section;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 188,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Color.fromARGB(255, 0, 90, 172),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: BorderSide(width: 2.5, color: Colors.black),
            ),
            textStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            switch (_section) {
              case 0:
                {
                  // compressor section
                  _compIssueSwitch(context, _choice);
                }
                break;

              case 1:
                {
                  // circ pump section
                  _circPumpIssueSwitch(context, _choice);
                }
                break;

              case 2:
                {
                  // cooler section
                  _coolerIssueSwitch(context, _choice);
                }
                break;

              case 3:
                {
                  // condenser section
                  _condenserIssueSwitch(context, _choice);
                }
                break;

              case 4:
                {
                  // inverter section
                  _inverterIssueSwitch(context, _choice);
                }
                break;

              case 5:
                {
                  // tank section
                  _tankIssueSwitch(context, _choice);
                }
                break;

              case 6:
                {
                  // panel section
                  _panelIssueSwitch(context, _choice);
                }
                break;

              case 7:
                {
                  // Mixed section
                  _mixedIssueSwitch(context, _choice);
                }
                break;

              case 8:
                {
                  // High Low section
                  _highLowIssueSwitch(context, _choice);
                }
                break;

              default:
                {
                  // no section
                  return;
                }
            }
          },
          child: Text(_title)),
    );
  }
}

_compIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "high_amps":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "suction_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openHighLowDialog(
            context, "Suction Temperature", "suction_temperature");
      }
      break;

    case "discharge_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openHighLowDialog(
            context, "Discharge Temperature", "discharge_temperature");
      }
      break;

    case "capacity":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "low_oil_pressure":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "high_discharge_pressure":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "oil_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openHighLowDialog(context, "Oil Temperature", "oil_temperature");
      }
      break;

    case "low_suction_pressure":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "thermal_alarm":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}

_circPumpIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "high_amps":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "no_flow":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}

_coolerIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "out_temp":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "in_low_low_temp":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}

_condenserIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "high_amps":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}

_inverterIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "comp_hz":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "circ_pump_hz":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "condenser_hz":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}

_tankIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "tank_levels":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "tank_temps":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}

_panelIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "dark_touch_screen":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "no_power":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "e_stop_active":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}

_mixedIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "high_liquid_level":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "low_liquid_level":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "system_wont_start":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "wire_break":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "high_superheat":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}

_highLowIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "high_suction_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "low_suction_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "high_discharge_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "low_discharge_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "high_oil_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    case "low_oil_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}
