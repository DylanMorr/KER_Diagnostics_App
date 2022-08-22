import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Sliver extends StatefulWidget {
  const Sliver({Key? key}) : super(key: key);

  @override
  State<Sliver> createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
  @override
  Widget build(BuildContext context) {
    String device = ResponsiveValue(
      context,
      defaultValue: 'tablet',
      valueWhen: const [
        Condition.smallerThan(
          name: MOBILE,
          value: 'smartphone',
        ),
      ],
    ).value as String;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey[300],
            title: Text(
              "Turn your " + device + " into a diagnostic device",
              style: TextStyle(
                color: Colors.black,
                fontSize: ResponsiveValue(
                  context,
                  defaultValue: 22.0,
                  valueWhen: const [
                    Condition.smallerThan(
                      name: MOBILE,
                      value: 20.0,
                    ),
                    Condition.largerThan(
                      name: TABLET,
                      value: 24.0,
                    )
                  ],
                ).value,
              ),
            ),
            expandedHeight: 130.0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 25, bottom: 45),
              title: Text(
                '• Instant resolution \n• No other requirements',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: ResponsiveValue(
                    context,
                    defaultValue: 12.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 10.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 14.0,
                      )
                    ],
                  ).value,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 30, bottom: 10),
                    child: CircleAvatar(
                      radius: ResponsiveValue(
                        context,
                        defaultValue: 36.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 32.0,
                          ),
                          Condition.largerThan(
                            name: TABLET,
                            value: 40.0,
                          )
                        ],
                      ).value,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        'assets/images/handHoldingPhone.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
