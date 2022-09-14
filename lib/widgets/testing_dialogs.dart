import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Circ%20Pump%20Dialog/circ_pump_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Compressor%20Dialog/comp_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Condenser%20Dialog/condenser_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Cooler%20Dialog/cooler_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Inverter%20Dialog/inverter_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Mixed%20Dialog/mixed_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Panel%20Dialog/panel_dialog.dart';
import 'package:ker_diagnostics_app/widgets/Diagnostic%20Dialog/Tank%20Dialog/tank_dialog.dart';

class TestDiags extends StatelessWidget {
  const TestDiags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CompDialog(),
          CircPumpDialog(),
          CoolerDialog(),
          CondenserDialog(),
          InverterDialog(),
          TankDialog(),
          PanelDialog(),
          MixedDialog(),
        ],
      ),
    );
  }
}
