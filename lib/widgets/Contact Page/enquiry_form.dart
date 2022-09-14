import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class EnquiryForm extends StatefulWidget {
  const EnquiryForm({Key? key}) : super(key: key);

  @override
  State<EnquiryForm> createState() => _EnquiryFormState();
}

class _EnquiryFormState extends State<EnquiryForm> {
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Heading text field
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Enquiry Form',
                  textScaleFactor: ResponsiveValue(
                    context,
                    defaultValue: 1.8,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 1.5,
                      ),
                    ],
                  ).value,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Form(
            // set key to global key _key
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // --- Name Form Field ---
                Wrap(
                  spacing: 152,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    // Setup an expanded ListTile to house the form field
                    Container(
                      width: 200,
                      height: 45,
                      child: ListTile(
                        // Name Form field
                        subtitle: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 20.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 16.0,
                                ),
                              ],
                            ).value,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            errorText: error,
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
                  ],
                ),
                // --- Contact No Form Field ---
                Wrap(
                  spacing: 28,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Contact No. (Optional)",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    // Setup an expanded ListTile to house the form field
                    Container(
                      width: 200,
                      height: 45,
                      child: ListTile(
                        // Name Form field
                        subtitle: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 20.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 16.0,
                                ),
                              ],
                            ).value,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            errorText: error,
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
                  ],
                ),
                // --- Name Form Field ---
                Wrap(
                  spacing: 155,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    // Setup an expanded ListTile to house the form field
                    Container(
                      width: 200,
                      height: 45,
                      child: ListTile(
                        // Name Form field
                        subtitle: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 20.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 16.0,
                                ),
                              ],
                            ).value,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            errorText: error,
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
                  ],
                ),
                // --- Subject Form Field ---
                Wrap(
                  spacing: 142,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Subject",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    // Setup an expanded ListTile to house the form field
                    Container(
                      width: 200,
                      height: 45,
                      child: ListTile(
                        // Name Form field
                        subtitle: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 20.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 16.0,
                                ),
                              ],
                            ).value,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            errorText: error,
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
                  ],
                ),
                // --- Name Form Field ---
                Wrap(
                  spacing: 88,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        "Message",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    // Setup an expanded ListTile to house the form field
                    Container(
                      width: 240,
                      height: 120,
                      child: ListTile(
                        // Name Form field
                        subtitle: TextFormField(
                          // set the field to be a multiline so text is easier to read
                          keyboardType: TextInputType.multiline,
                          // max lines shown at one time is 3
                          maxLines: 3,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 20.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 16.0,
                                ),
                              ],
                            ).value,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            errorText: error,
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
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Wrap(
                    spacing: 30,
                    children: [
                      // create container for the elevated button to submit form
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 0, 90, 172)),
                          // Set the child to be a text widget with purpose of button
                          child: Text(
                            'Submit',
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
                      // create container for the elevated button to submit form
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 200, 0, 0)),
                          // Set the child to be a text widget with purpose of button
                          child: Text(
                            'Clear',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
