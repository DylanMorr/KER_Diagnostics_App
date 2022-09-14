import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Contact%20Page/enquiry_form.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactContent extends StatefulWidget {
  @override
  State<ContactContent> createState() => _ContactContentState();
}

class _ContactContentState extends State<ContactContent> {
  @override
  Widget build(BuildContext context) {
    // Create a container to hold a ListView to display everything
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Corporate Office',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: ResponsiveValue(
                            context,
                            defaultValue: 24.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 18.0,
                              ),
                            ],
                          ).value,
                        ),
                      ),
                      SizedBox(height: 5),
                      Wrap(
                        spacing: 5,
                        children: [
                          Icon(Icons.location_pin),
                          Text(
                            'St Catherines Road,\nKillybegs,\nCo.Donegal,\nIreland F94 XY45',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 20.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 14.0,
                                  ),
                                ],
                              ).value,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/kerSide.JPG',
                          height: MediaQuery.of(context).size.height / 8,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30),
            margin: EdgeInsets.only(top: 20),
          ),
          // Space out content
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.blue,
                            size: ResponsiveValue(
                              context,
                              defaultValue: 30.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 25.0,
                                ),
                              ],
                            ).value,
                          ),
                          Text(
                            'https://www.ker.ie',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 22.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 18.0,
                                  ),
                                ],
                              ).value,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Wrap(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: Colors.red,
                            size: ResponsiveValue(
                              context,
                              defaultValue: 30.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 25.0,
                                ),
                              ],
                            ).value,
                          ),
                          Text(
                            'info@ker.ie',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 22.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 18.0,
                                  ),
                                ],
                              ).value,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Wrap(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.green,
                            size: ResponsiveValue(
                              context,
                              defaultValue: 30.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 25.0,
                                ),
                              ],
                            ).value,
                          ),
                          Text(
                            '+35374 973 1525',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 22.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 18.0,
                                  ),
                                ],
                              ).value,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 30),
          ),
          // Space out content
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),

          // enquiry form widget
          EnquiryForm(),

          // Space out content
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 6.9,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        'assets/images/importantSign.JPG',
                        height: MediaQuery.of(context).size.height / 22,
                        width: MediaQuery.of(context).size.width / 6,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Text(
                        'Please note that there is a chargable fee for the consultation service',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: ResponsiveValue(
                            context,
                            defaultValue: 22.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 15.0,
                              ),
                            ],
                          ).value,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Wrap(
                      spacing: 5,
                      children: [
                        Text(
                          'Check the service charges in this menu:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 22.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 15.0,
                                ),
                              ],
                            ).value,
                          ),
                        ),
                        Container(
                          height: 32,
                          width: ResponsiveValue(
                            context,
                            defaultValue: 165.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 145.0,
                              ),
                            ],
                          ).value,
                          // Setup box decoration for border control
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          // create the elevated button
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            // Set the child to be a text widget with purpose of button
                            child: Text(
                              'Service Charges',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 17.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: MOBILE,
                                        value: 14.0,
                                      ),
                                    ],
                                  ).value,
                                  fontWeight: FontWeight.bold),
                            ),
                            // On press navigate to service charges
                            onPressed: () {
                              Navigator.pushNamed(context, '/Charges');
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 10, top: 10),
          ),
        ],
      ),
    );
  }
}
