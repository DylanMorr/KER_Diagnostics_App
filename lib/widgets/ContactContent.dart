import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/utilities/text_styling.dart';

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
                  style: Style.contactTitle,
                ),
                // Space out content
                SizedBox(
                  height: 45,
                ),
                // Text to guide user in page
                Text(
                  "Get in touch with us with any question and we will get back to you ASAP",
                  textAlign: TextAlign.center,
                  style: Style.commonTextBold,
                ),
                // Space out content
                SizedBox(height: 35),
                // Setup a container to display all Ker info
                Container(
                    // Container sizing and padding
                    width: 300,
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
                    child: Text(
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
                      style: Style.commonTextBlack,
                    )),
                // Space out content
                SizedBox(height: 35),
                // Create a container to hold the enquiry form
                Container(
                  // Container sizing and padding
                  width: 400,
                  height: 300,
                  padding: EdgeInsets.all(10),
                  // Box decorator for border control
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // setup a child form for enquiring
                  child: Form(
                    // set key to global key _key
                    key: _key,
                    child: Column(
                      children: [
                        // Space heading down slightly
                        SizedBox(
                          height: 12,
                        ),
                        // Heading text field
                        Text(
                          'Enquiry Form',
                          textScaleFactor: 1.5,
                          style: TextStyle(color: Colors.white),
                        ),
                        // Space out content
                        SizedBox(height: 12),
                        // Setup a row widget so that the name and email form can be side by side
                        Row(
                          children: [
                            // Setup an expanded ListTile to house the form field
                            Expanded(
                              child: ListTile(
                                // Name Form field
                                subtitle: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  // Setup input decoration for border control and hint text
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 255, 0, 0)),
                                    ),
                                    hintText: 'Name',
                                    hintStyle: TextStyle(color: Colors.white70),
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
                              width: 5,
                            ),
                            // Setup an expanded ListTile to house the form field
                            Expanded(
                              child: ListTile(
                                // Email form field
                                subtitle: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  // Setup input decoration for border control and hint text
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 255, 0, 0)),
                                    ),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(color: Colors.white70),
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
                          height: 5,
                        ),
                        // Setup a ListTile for the last form field
                        ListTile(
                          // Message Form Field
                          subtitle: TextFormField(
                            // set the field to be a multiline so text is easier to read
                            keyboardType: TextInputType.multiline,
                            // max lines shown at one time is 3
                            maxLines: 3,
                            style: TextStyle(color: Colors.white),
                            // Setup input decoration for border control and hint text
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 0, 0)),
                              ),
                              hintText: 'Message',
                              hintStyle: TextStyle(color: Colors.white70),
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
                              fontSize: 12.0),
                        ),
                        // Space out content
                        SizedBox(height: 8),
                        // create container for the elevated button to submit form
                        Container(
                          height: 40,
                          width: 150,
                          // Setup box decoration for border control
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          // create the elevated button
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 255, 0, 0)),
                            // Set the child to be a text widget with purpose of button
                            child: Text(
                              'Send Message',
                              style: TextStyle(color: Colors.white),
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
