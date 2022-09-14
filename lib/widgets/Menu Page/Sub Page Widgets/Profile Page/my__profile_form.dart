import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({Key? key}) : super(key: key);

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
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
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.5,
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 70,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Heading text field
              Container(
                padding: EdgeInsets.only(top: 70, right: 30),
                child: GestureDetector(
                  onTap: (() {
                    print("Edit Profile Details");
                  }),
                  child: Text(
                    'edit',
                    textScaleFactor: ResponsiveValue(
                      context,
                      defaultValue: 1.8,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 1.0,
                        ),
                      ],
                    ).value,
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 30, top: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 25),
                Text(
                  'Contact No.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 25),
                Text(
                  'Email',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 25),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 25),
                Text(
                  'Your Vessel',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                // set key to global key _key
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                            fillColor: Colors.grey[300],
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
                            fillColor: Colors.grey[300],
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
                            fillColor: Colors.grey[300],
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
                            fillColor: Colors.grey[300],
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
                            fillColor: Colors.grey[300],
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
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Heading text field
              Container(
                padding: EdgeInsets.only(left: 30),
                child: GestureDetector(
                  onTap: (() {
                    print("Edit Profile Details");
                  }),
                  child: Text(
                    'Vessel Drawings',
                    textScaleFactor: ResponsiveValue(
                      context,
                      defaultValue: 1.8,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 1.3,
                        ),
                      ],
                    ).value,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
