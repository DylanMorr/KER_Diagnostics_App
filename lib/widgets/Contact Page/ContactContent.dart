import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactContent extends StatefulWidget {
  @override
  State<ContactContent> createState() => _ContactContentState();
}

class _ContactContentState extends State<ContactContent> {
  // create a FormState key to identify form
  final _key = GlobalKey<FormState>();

  // create states to store name email and message from text fields
  String name = '';
  String email = '';
  String message = '';
  // create a error state for error messages
  String error = '';

  @override
  Widget build(BuildContext context) {
    // Set the title of the page
    final contactTitle = "Contact Us".toUpperCase();
    // Create a container to hold a ListView to display everything
    return Container(
      child: ListView(
        // turn off scrolling
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Title for page
                Text(
                  contactTitle,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 26.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 20.0,
                          ),
                          Condition.largerThan(
                            name: TABLET,
                            value: 28.0,
                          )
                        ],
                      ).value,
                      fontWeight: FontWeight.bold),
                ),
                // Space out content
                SizedBox(
                  height: ResponsiveValue(
                    context,
                    defaultValue: 80.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 60.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 90.0,
                      )
                    ],
                  ).value,
                ),
                // Text to guide user in page
                Text(
                  "Get in touch with us with any question and we will get back to you ASAP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 20.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 15.0,
                          ),
                          Condition.largerThan(
                            name: TABLET,
                            value: 22.0,
                          )
                        ],
                      ).value,
                      fontWeight: FontWeight.bold),
                ),
                // Space out content
                SizedBox(
                  height: ResponsiveValue(
                    context,
                    defaultValue: 80.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 60.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 90.0,
                      )
                    ],
                  ).value,
                ),
                // Setup a container to display all Ker info
                Container(
                    // Container sizing and padding
                    width: ResponsiveValue(
                      context,
                      defaultValue: 500.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 300.0,
                        ),
                        Condition.largerThan(
                          name: TABLET,
                          value: 600.0,
                        )
                      ],
                    ).value,
                    padding: EdgeInsets.all(10),
                    // Add box decorator for border control and shadow
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: new Offset(4.0, 4.0),
                        ),
                      ],
                    ),
                    // Set the child of the container to return text widgets with details
                    child: Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              // launch('+35374 973 1525');
                            },
                            child: Text('Tel')),
                        Text(
                          "Phone:" +
                              "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                              "+35374 973 1525\n\n" +
                              "Email:" +
                              "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                              "info@ker.ie\n\n" +
                              "Address:" +
                              "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                              "St Catherines Road,\n" +
                              "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                              "Killybegs,\n" +
                              "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                              "Co. Donegal,\n" +
                              "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                              "Ireland F94 XY45",
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
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 22.0,
                                  )
                                ],
                              ).value,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                // Space out content
                SizedBox(
                  height: ResponsiveValue(
                    context,
                    defaultValue: 80.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 60.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 90.0,
                      )
                    ],
                  ).value,
                ),
                // Create a container to hold the enquiry form
                Container(
                  // Container sizing and padding
                  width: ResponsiveValue(
                    context,
                    defaultValue: 650.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 400.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 500.0,
                      )
                    ],
                  ).value,
                  height: ResponsiveValue(
                    context,
                    defaultValue: 400.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 350.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 500.0,
                      )
                    ],
                  ).value,
                  padding: EdgeInsets.all(10),
                  // Box decorator for border control
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 0, 0, 255)),
                  // setup a child form for enquiring
                  child: Form(
                    // set key to global key _key
                    key: _key,
                    child: Column(
                      children: [
                        // Space heading down slightly
                        SizedBox(
                          height: ResponsiveValue(
                            context,
                            defaultValue: 30.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 20.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 40.0,
                              )
                            ],
                          ).value,
                        ),
                        // Heading text field
                        Text(
                          'Enquiry Form',
                          textScaleFactor: ResponsiveValue(
                            context,
                            defaultValue: 1.8,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 1.5,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 2.0,
                              )
                            ],
                          ).value,
                          style: TextStyle(color: Colors.white),
                        ),
                        // Space out content
                        SizedBox(
                          height: ResponsiveValue(
                            context,
                            defaultValue: 30.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 20.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 40.0,
                              )
                            ],
                          ).value,
                        ),
                        // Setup a row widget so that the name and email form can be side by side
                        Row(
                          children: [
                            // Setup an expanded ListTile to house the form field
                            Expanded(
                              child: ListTile(
                                // Name Form field
                                subtitle: TextFormField(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: ResponsiveValue(
                                      context,
                                      defaultValue: 20.0,
                                      valueWhen: const [
                                        Condition.smallerThan(
                                          name: MOBILE,
                                          value: 16.0,
                                        ),
                                        Condition.largerThan(
                                          name: TABLET,
                                          value: 22.0,
                                        )
                                      ],
                                    ).value,
                                  ),
                                  // Setup input decoration for border control and hint text
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 255, 0, 0),
                                          width: 2),
                                    ),
                                    hintText: 'Name',
                                    hintStyle: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ResponsiveValue(
                                        context,
                                        defaultValue: 20.0,
                                        valueWhen: const [
                                          Condition.smallerThan(
                                            name: MOBILE,
                                            value: 16.0,
                                          ),
                                          Condition.largerThan(
                                            name: TABLET,
                                            value: 22.0,
                                          )
                                        ],
                                      ).value,
                                    ),
                                  ),
                                  // valid form by checking if empty - if empty return string if not empty return null
                                  validator: (value) =>
                                      value!.isEmpty ? 'Enter a Name' : null,
                                  // get value in field whenever it is changed
                                  onChanged: (value) {
                                    // set the state of name = value of text field
                                    setState(() {
                                      name = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            // Space out content
                            SizedBox(
                              width: ResponsiveValue(
                                context,
                                defaultValue: 10.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 5.0,
                                  ),
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 15.0,
                                  )
                                ],
                              ).value,
                            ),
                            // Setup an expanded ListTile to house the form field
                            Expanded(
                              child: ListTile(
                                // Email form field
                                subtitle: TextFormField(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: ResponsiveValue(
                                      context,
                                      defaultValue: 20.0,
                                      valueWhen: const [
                                        Condition.smallerThan(
                                          name: MOBILE,
                                          value: 16.0,
                                        ),
                                        Condition.largerThan(
                                          name: TABLET,
                                          value: 22.0,
                                        )
                                      ],
                                    ).value,
                                  ),
                                  // Setup input decoration for border control and hint text
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 255, 0, 0),
                                          width: 2),
                                    ),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ResponsiveValue(
                                        context,
                                        defaultValue: 20.0,
                                        valueWhen: const [
                                          Condition.smallerThan(
                                            name: MOBILE,
                                            value: 16.0,
                                          ),
                                          Condition.largerThan(
                                            name: TABLET,
                                            value: 22.0,
                                          )
                                        ],
                                      ).value,
                                    ),
                                  ),
                                  // valid form by checking if empty - if empty return string if not empty return null
                                  validator: (value) =>
                                      value!.isEmpty ? 'Enter an Email' : null,
                                  // get value in field whenever it is changed
                                  onChanged: (value) {
                                    // set the state of name = value of text field
                                    setState(() {
                                      email = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Space out content
                        SizedBox(
                          height: ResponsiveValue(
                            context,
                            defaultValue: 30.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 10.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 40.0,
                              )
                            ],
                          ).value,
                        ),
                        // Setup a ListTile for the last form field
                        ListTile(
                          // Message Form Field
                          subtitle: TextFormField(
                            // set the field to be a multiline so text is easier to read
                            keyboardType: TextInputType.multiline,
                            // max lines shown at one time is 3
                            maxLines: 3,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 20.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 16.0,
                                  ),
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 22.0,
                                  )
                                ],
                              ).value,
                            ),
                            // Setup input decoration for border control and hint text
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 0, 0),
                                    width: 2),
                              ),
                              hintText: 'Message',
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: ResponsiveValue(
                                  context,
                                  defaultValue: 20.0,
                                  valueWhen: const [
                                    Condition.smallerThan(
                                      name: MOBILE,
                                      value: 16.0,
                                    ),
                                    Condition.largerThan(
                                      name: TABLET,
                                      value: 22.0,
                                    )
                                  ],
                                ).value,
                              ),
                            ),
                            // valid form by checking if empty - if empty return string if not empty return null
                            validator: (value) =>
                                value!.isEmpty ? 'Enter a Message' : null,
                            // get value in field whenever it is changed
                            onChanged: (value) {
                              // set the state of name = value of text field
                              setState(() {
                                message = value;
                              });
                            },
                          ),
                        ),
                        // text widget to display error message
                        Text(
                          error,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 16.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 12.0,
                                ),
                                Condition.largerThan(
                                  name: TABLET,
                                  value: 18.0,
                                )
                              ],
                            ).value,
                          ),
                        ),
                        // Space out content
                        SizedBox(
                          height: ResponsiveValue(
                            context,
                            defaultValue: 15.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 20.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 20.0,
                              )
                            ],
                          ).value,
                        ),
                        // create container for the elevated button to submit form
                        Container(
                          height: ResponsiveValue(
                            context,
                            defaultValue: 50.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 40.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 60.0,
                              )
                            ],
                          ).value,
                          width: ResponsiveValue(
                            context,
                            defaultValue: 160.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 150.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 170.0,
                              )
                            ],
                          ).value,
                          // Setup box decoration for border control
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          // create the elevated button
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 255, 0, 0)),
                            // Set the child to be a text widget with purpose of button
                            child: Text(
                              'Send Message',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: ResponsiveValue(
                                  context,
                                  defaultValue: 18.0,
                                  valueWhen: const [
                                    Condition.smallerThan(
                                      name: MOBILE,
                                      value: 14.0,
                                    ),
                                    Condition.largerThan(
                                      name: TABLET,
                                      value: 20.0,
                                    )
                                  ],
                                ).value,
                              ),
                            ),
                            // On press send message to ker
                            onPressed: () async {
                              // todo
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_phoneWidge() {
  TextButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    ),
    onPressed: () {
      launch('+35374 973 1525');
    },
    child: Text('TextButton'),
  );
}
