import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class testWidge extends StatelessWidget {
  const testWidge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: responsiveTextWidget(context));
  }
}

Widget responsiveTextWidget(BuildContext context) {
  return Text(
    'Flutter Response Framework',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: ResponsiveValue(
        context,
        defaultValue: 60.0,
        valueWhen: const [
          Condition.smallerThan(
            name: MOBILE,
            value: 40.0,
          ),
          Condition.largerThan(
            name: TABLET,
            value: 80.0,
          )
        ],
      ).value,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
  );
}
