import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ServiceCharges extends StatelessWidget {
  const ServiceCharges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: 40),
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 21, right: 21, bottom: 20),
            child: Text(
              'Customer Support\nService Charges',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 21, right: 21, top: 10),
            child: Text(
              'Please see details below of fees aplicable for use of the KER Customer support. By accepting the ' +
                  'Terms and Conditions of use of the service, Service Users are also accepting this Schedule of Fees. All fees shall be charged in Euros.',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Table(
              border: TableBorder.all(color: Colors.black, width: 2),
              children: [
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: ResponsiveValue(
                          context,
                          defaultValue: 20.0,
                          valueWhen: const [
                            Condition.smallerThan(
                              name: MOBILE,
                              value: 17.0,
                            ),
                          ],
                        ).value,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
                    child: Text(
                      '€ XXX',
                      style: TextStyle(
                        fontSize: ResponsiveValue(
                          context,
                          defaultValue: 20.0,
                          valueWhen: const [
                            Condition.smallerThan(
                              name: MOBILE,
                              value: 17.0,
                            ),
                          ],
                        ).value,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(bottom: 10, left: 20, right: 20),
                          child: Text(
                            'Phone',
                            style: TextStyle(
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 20.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 17.0,
                                  ),
                                ],
                              ).value,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    '1 Hour',
                                    style: TextStyle(
                                      fontSize: ResponsiveValue(
                                        context,
                                        defaultValue: 20.0,
                                        valueWhen: const [
                                          Condition.smallerThan(
                                            name: MOBILE,
                                            value: 17.0,
                                          ),
                                        ],
                                      ).value,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    '2 Hour',
                                    style: TextStyle(
                                      fontSize: ResponsiveValue(
                                        context,
                                        defaultValue: 20.0,
                                        valueWhen: const [
                                          Condition.smallerThan(
                                            name: MOBILE,
                                            value: 17.0,
                                          ),
                                        ],
                                      ).value,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    '3 Hour',
                                    style: TextStyle(
                                      fontSize: ResponsiveValue(
                                        context,
                                        defaultValue: 20.0,
                                        valueWhen: const [
                                          Condition.smallerThan(
                                            name: MOBILE,
                                            value: 17.0,
                                          ),
                                        ],
                                      ).value,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 50, bottom: 20),
                              child: Text(
                                '€ XXX',
                                style: TextStyle(
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 20.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: MOBILE,
                                        value: 17.0,
                                      ),
                                    ],
                                  ).value,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                '€ XXX',
                                style: TextStyle(
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 20.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: MOBILE,
                                        value: 17.0,
                                      ),
                                    ],
                                  ).value,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 20, left: 20, right: 20, bottom: 60),
                              child: Text(
                                '€ XXX',
                                style: TextStyle(
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 20.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: MOBILE,
                                        value: 17.0,
                                      ),
                                    ],
                                  ).value,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
