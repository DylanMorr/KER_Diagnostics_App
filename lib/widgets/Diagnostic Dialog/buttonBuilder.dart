import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Compressor%20Dialog/high_low_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/causes_and_fixes_dialog.dart';

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

            case 9:
              {
                // Continue or Contact section
                _exitOrContactSwitch(context, _choice);
              }
              break;

            default:
              {
                // no section
                return;
              }
          }
        },
        child: Text(_title),
      ),
    );
  }
}

_compIssueSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "high_amps":
      {
        Navigator.of(context).pop(choice);
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "High Amps",
          "• Too much load from high water temp (should fix itself).\n• Fault in motor - won't come down itself.",
          "• Will fix itself by limitation.\n• Check or replace motor.",
        );
        print("Selected here " + choice);
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
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "Capacity",
          "• Faulty capacity solenoid coils.\n• Limitation stopping capacity increase.",
          "• Replace capacity solenoid coils.\n• Check for limitations on screen.",
        );
      }
      break;

    case "low_oil_pressure":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "Low Oil Pressure",
          "• Compressor oil receiver low level.\n• Compressor oil cold.\n• Dirty Oil Filter.",
          "• Check level in oil receiver sight glass, top up if necessary.\n• Feel compressor oil sump, it should be warm - If not check oil heater.\n• Check oil filter differential pressure.\n• Replace oil Filter and oil, Refer to Howden manual.\n• Check pressures history screen.",
        );
      }
      break;

    case "high_discharge_pressure":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "High Discharge Pressure",
          "• Lack of water flow through condenser.\n• Condenser pump inverter not controlling speed properly or condenser valve is not controlling properly.",
          "• Check the sea inlet valve and strainer is open. Check that condenser pump is running when discharge pressure is high. Check for pump airlock. Check Condenser valve operation.\n• Have PID settings in PLC and inverter settings checked. Check Condenser Valve.\n• Reset this alarm on high pressure switch by pushing green button, then reset on touchscreen alarm page.\n• Check Pressures history page.",
        );
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
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "Low Suction Pressure",
          "• Poor water  flow across cooler.\n• System low in gas.\n• Expansion valves are not regulating superheat correctly.\n• Expansion valve coils have become faulty.\n• Cooler is partially frozen.",
          "• Check water strainer. Increase circ pump speed. Reset alarm on touchscreen alarm page.\n• Check gas level on screen and at pilot receiver, if the system is low it must be leak checked and topped up.\n• Check settings and expansion valve strainers.\n• Replace expansion valve coils, check pressures history page.\n• Flush cooler to thaw out.",
        );
      }
      break;

    case "thermal_alarm":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "Thermal Alarm",
          "• Compressor motor windings have got too hot.\n• This alarm shows on inverter.",
          "• Check compressor motor.\n• Check motor amps.",
        );
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
        openCausesFixesDialog(
          context,
          "Circ Pump Issue",
          "High Amps",
          "• Blockage in pump.\n• Motor failure.",
          "• Clear blockage.\n• Check or replace motor.",
        );
      }
      break;

    case "no_flow":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Circ Pump Issue",
          "No Flow",
          "• Not enough water in tank.\n• Pump air locked.\n• Faulty or dirty flow meter.",
          "• Fill tank.\n• Bleed pump / open seacock for a minute.\n• Clean or replace flow meter.",
        );
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
        openCausesFixesDialog(
          context,
          "Cooler Issue",
          "Out Temp",
          "• Not displaying correct values.",
          "• Faulty sensor or in need of calibration.",
        );
      }
      break;

    case "in_low_low_temp":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Cooler Issue",
          "In(Low Low) Temp",
          "• System has kept cooling after reaching setpoint.",
          "• Check the capacity indicator for calibration as this could keep compressor from stopping.\n• Check temperature history screen.",
        );
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
        openCausesFixesDialog(
          context,
          "Condenser Issue",
          "In(Low Low) Temp",
          "• Blockage in pump.\n• Motor failure.",
          "• Clear blockage.\n• Check or replace motor.",
        );
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
        openCausesFixesDialog(
          context,
          "Inverter Issue",
          "Compressor Hz",
          "• Power Failure.\n• E-stop is pressed.\n• Other Inverter Alarms.",
          "• Reset fault by accepting alarm on touchscreen. Check breakers for inverters.\n• Reset E-stop and then reset alarm on touchscreen.\n• Check what the alarm is on the inverter before resetting on touchscreen and refer to the inverter manual for cause.",
        );
      }
      break;

    case "circ_pump_hz":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Inverter Issue",
          "Circ Pump Hz",
          "• Power Failure.\n• E-stop is pressed.\n• Other Inverter Alarms.",
          "• Reset fault by accepting alarm on touchscreen. Check breakers for inverters.\n• Reset E-stop and then reset alarm on touchscreen.\n• Check what the alarm is on the inverter before resetting on touchscreen and refer to the inverter manual for cause.",
        );
      }
      break;

    case "condenser_hz":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Inverter Issue",
          "Condenser Hz",
          "• Power Failure.\n• E-stop is pressed.\n• Other Inverter Alarms.",
          "• Reset fault by accepting alarm on touchscreen. Check breakers for inverters.\n• Reset E-stop and then reset alarm on touchscreen.\n• Check what the alarm is on the inverter before resetting on touchscreen and refer to the inverter manual for cause.",
        );
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
        openCausesFixesDialog(
          context,
          "Tank Issue",
          "Tank Levels",
          "• Not displaying correct values.",
          "• Faulty level sensor or in need of calibration.",
        );
      }
      break;

    case "tank_temps":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Tank Issue",
          "Tank Temps",
          "• Not displaying correct values.",
          "• Faulty temp sensor or in need of calibration.",
        );
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
        openCausesFixesDialog(
          context,
          "Panel Issue",
          "Dark Touch Screen",
          "• Loss of 24dvc to PLC / touch screen.",
          "• Check fuse for PLC touch screen. Check that power supplies are on.",
        );
      }
      break;

    case "no_power":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Panel Issue",
          "No Power at RSW Panel",
          "• Loss of Power (230v).",
          "• Check mains supply to RSW panel.",
        );
      }
      break;

    case "e_stop_active":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Panel Issue",
          "Emergency Stop Active",
          "• Emergency Stop Pushed in.\n• E-Stop Power Supply Tripped or Fuse Blown.\n• Faulty Safety Relay.",
          "• Reset Emergency Stop.\n• Check MCB.\n• Replace Relay.",
        );
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
        openCausesFixesDialog(
          context,
          "Mixed Issue",
          "High Liquid Level",
          "• Blocked strainer/filter in liquid line.\n• Expansion valve coil burned out.",
          "• Clean filter.\n• Replace coil.",
        );
      }
      break;

    case "low_liquid_level":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Mixed Issue",
          "Low Liquid Level",
          "• Poor evaporation in cooler.\n• Expansion valve stuck open.\n• System low in gas.",
          "• Check flow through cooler.\n• Check expansion valves.\n• Check gas level and top up if necessary.",
        );
      }
      break;

    case "system_wont_start":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Mixed Issue",
          "System Won't Start",
          "• Alarm keeping system off.\n• Compressor may not be in auto mode.\n• No circulating flow.",
          "• Clear alarms.\n• Put compressor into auto mode on condenser screen.\n• Check there is enough water in tank. Check strainer. Check for pump airlock.",
        );
      }
      break;

    case "wire_break":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Mixed Issue",
          "Wire Break",
          "• Fault in wiring going to the listed sensor, or faulty sensor.",
          "• Check the wiring or replace the sensor.",
        );
      }
      break;

    case "high_superheat":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Mixed Issue",
          "High Superheat",
          "• Not enough liquid entering cooler.",
          "• Check expansion valves are operating properly.\n• Clean expansion valve strainers.",
        );
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
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "High Suction Temperature",
          "• Not enough liquid entering the cooler.\n• Blocked liquid line strainers.\n• Burned out coils in expansion valve.",
          "• Clean the liquid line strainers.\n• Check expansion valve may need to replace coils.",
        );
      }
      break;

    case "low_suction_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "Low Suction Temperature",
          "• Too much liquid entering cooler.\n• Poor circulation flow.",
          "• Check expansion valve is not jammed open.\n• Check sea water strainers.\n• Check cooler is not frozen.",
        );
      }
      break;

    case "high_discharge_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "High Discharge Temperature",
          "• Liquid injection not working properly.\n• Low ammonia liquid level in pilot receiver.",
          "• Check solenoids on liquid injection line.\n• Check gas level in system.\n• Check temp history screen.",
        );
      }
      break;

    case "low_discharge_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "Low Discharge Temperature",
          "• Discharge temp is not warm enough. Liquid injection could be stuck on or not working properly.\n• Cooler partially frozen.",
          "• Check liquid injection solenoid. Check discharge temp sensor.\n• Thaw cooler by flushing with higher temp water.",
        );
      }
      break;

    case "high_oil_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "High Oil Temperature",
          "• Compressor cooling is not operating properly.",
          "• Clean cooling valves and strainers.",
        );
      }
      break;

    case "low_oil_temperature":
      {
        Navigator.of(context).pop(choice);
        print("Selected " + choice);
        openCausesFixesDialog(
          context,
          "Compressor Issue",
          "Low Oil Temperature",
          "• Compressor cooling is not operating properly.",
          "• Clean cooling valves and strainers.",
        );
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}

_exitOrContactSwitch(BuildContext context, String choice) {
  switch (choice) {
    case "continue":
      {
        Navigator.of(context).pop(choice);
        print("Continued bye : " + choice);
      }
      break;

    case "contact":
      {
        Navigator.of(context).pop(choice);
        print("Contacting : " + choice);
      }
      break;

    default:
      {
        Navigator.of(context).pop();
      }
      break;
  }
}
