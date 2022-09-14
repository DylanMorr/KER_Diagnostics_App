import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/utilities/nav_bar.dart';

class RegisterContent extends StatefulWidget {
  const RegisterContent({Key? key}) : super(key: key);

  @override
  State<RegisterContent> createState() => _RegisterContentState();
}

class _RegisterContentState extends State<RegisterContent> {
  // create a FormState key to identify form
  final _key = GlobalKey<FormState>();

  // create states to store email and password from text fields
  String fullName = '';
  String email = '';
  String confirmEmail = '';
  String password = '';
  String confirmPassword = '';
  String phoneNo = '';
  String vessel = '';
  // create a error state for error messages from firebase
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 5),
      padding: EdgeInsets.only(top: 20),
      width: 400,
      height: 510,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          // setup a child form for signing in and registering
          Form(
            // set key to global key _key
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    // decoration of field
                    // decoration of field
                    decoration: InputDecoration(
                      // change the fill color to grey
                      fillColor: Colors.white, filled: true,
                      // add padding to the content in the field
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      // set the input border to none to remove the line
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      // add hint text saying email to let the user know what to enter
                      hintText: 'Full Name',
                    ),
                    // valid form by checking if empty - if empty return string if not empty return null
                    validator: (value) =>
                        value!.isEmpty ? 'Enter full name' : null,
                    // get value in field whenever it is changed
                    onChanged: (value) {
                      // set the state of email = value of text field
                      setState(() {
                        fullName = value;
                      });
                    },
                  ),
                ),

                // sized box to space out fields
                SizedBox(
                  height: 10.0,
                ),

                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    // decoration of field
                    // decoration of field
                    decoration: InputDecoration(
                      // change the fill color to grey
                      fillColor: Colors.white, filled: true,
                      // add padding to the content in the field
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      // set the input border to none to remove the line
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      // add hint text saying email to let the user know what to enter
                      hintText: 'Email Address',
                    ),
                    // valid form by checking if empty - if empty return string if not empty return null
                    validator: (value) =>
                        value!.isEmpty ? 'Enter email address' : null,
                    // get value in field whenever it is changed
                    onChanged: (value) {
                      // set the state of email = value of text field
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                ),

                // sized box to space out fields
                SizedBox(
                  height: 10.0,
                ),

                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    // decoration of field
                    // decoration of field
                    decoration: InputDecoration(
                      // change the fill color to grey
                      fillColor: Colors.white, filled: true,
                      // add padding to the content in the field
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      // set the input border to none to remove the line
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      // add hint text saying email to let the user know what to enter
                      hintText: 'Confirm Email Address',
                    ),
                    // valid form by checking if empty - if empty return string if not empty return null
                    validator: (value) =>
                        value!.isEmpty ? 'Enter email again' : null,
                    // get value in field whenever it is changed
                    onChanged: (value) {
                      // set the state of email = value of text field
                      setState(() {
                        confirmEmail = value;
                      });
                    },
                  ),
                ),

                // sized box to space out fields
                SizedBox(
                  height: 10.0,
                ),

                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    // decoration of field
                    decoration: InputDecoration(
                      // change the fill color to grey
                      fillColor: Colors.white, filled: true,
                      // add padding to the content in the field
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      // set the input border to none to remove the line
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      // add hint text saying email to let the user know what to enter
                      hintText: 'Password',
                    ),
                    // valid form by checking if password is < 6 - if < 6 return string if 6+ chars return null
                    validator: (value) => value!.length < 6
                        ? 'Enter a password 6+ chars long'
                        : null,
                    // obsure the text whenever entering a password
                    obscureText: true,
                    // get value in field whenever it is changed
                    onChanged: (value) {
                      // set the state of password = value of text field
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                ),

                // sized box to space out fields
                SizedBox(
                  height: 10.0,
                ),

                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    // decoration of field
                    decoration: InputDecoration(
                      // change the fill color to grey
                      fillColor: Colors.white, filled: true,
                      // add padding to the content in the field
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      // set the input border to none to remove the line
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      // add hint text saying email to let the user know what to enter
                      hintText: 'Confirm Password',
                    ),
                    // valid form by checking if password is < 6 - if < 6 return string if 6+ chars return null
                    validator: (value) => value!.length < 6
                        ? 'Enter a password 6+ chars long'
                        : null,
                    // obsure the text whenever entering a password
                    obscureText: true,
                    // get value in field whenever it is changed
                    onChanged: (value) {
                      // set the state of password = value of text field
                      setState(() {
                        confirmPassword = value;
                      });
                    },
                  ),
                ),

                // sized box to space out fields
                SizedBox(
                  height: 10.0,
                ),

                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    // decoration of field
                    // decoration of field
                    decoration: InputDecoration(
                      // change the fill color to grey
                      fillColor: Colors.white, filled: true,
                      // add padding to the content in the field
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      // set the input border to none to remove the line
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      // add hint text saying email to let the user know what to enter
                      hintText: 'Phone Number',
                    ),
                    // valid form by checking if empty - if empty return string if not empty return null
                    validator: (value) =>
                        value!.isEmpty ? 'Enter a phone number' : null,
                    // get value in field whenever it is changed
                    onChanged: (value) {
                      // set the state of email = value of text field
                      setState(() {
                        phoneNo = value;
                      });
                    },
                  ),
                ),

                // sized box to space out fields
                SizedBox(
                  height: 10.0,
                ),

                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    // decoration of field
                    // decoration of field
                    decoration: InputDecoration(
                      // change the fill color to grey
                      fillColor: Colors.white, filled: true,
                      // add padding to the content in the field
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      // set the input border to none to remove the line
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      // add hint text saying email to let the user know what to enter
                      hintText: 'Add your Vessel',
                    ),
                    // valid form by checking if empty - if empty return string if not empty return null
                    validator: (value) =>
                        value!.isEmpty ? 'Enter vessel name' : null,
                    // get value in field whenever it is changed
                    onChanged: (value) {
                      // set the state of email = value of text field
                      setState(() {
                        vessel = value;
                      });
                    },
                  ),
                ),

                // text widget to display error message for invalid email from firebase
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 12.0),
                ),

                Wrap(
                  spacing: 80,
                  children: [
                    Container(
                      height: 50,
                      padding: EdgeInsets.only(top: 16, bottom: 16, left: 10),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Sign in instead",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 90, 172),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/SignIn');
                                },
                            ),
                          ],
                        ),
                      ),
                    ),

                    // create an elevated button to register user to firebase
                    Container(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 0, 90, 172)),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        onPressed: () async {
                          print("register");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BotNavBar(
                                selectedIndex: 0,
                              ),
                            ),
                          );
                          // check if form is valid based on current state - true / false - ! for null-safe
                          // if (_key.currentState!.validate()) {
                          //   // dyanmic as we don't know if null or not - await and registerUser using email and password saved in state
                          //   dynamic userResult =
                          //       await _auth.registerUser(email, password).then((_) {
                          //     Navigator.of(context).pushReplacement(
                          //         MaterialPageRoute(
                          //             builder: (context) => VerifyEmail()));
                          //   });
                          //   // check if result is null
                          //   if (userResult == null) {
                          //     // this error is caught by firebase itself when it looks at the email - i.e. test is not valid so it won't work where as test@test.com is valid
                          //     // we also do not need an else statement as the stream we set up is always listening and knows when it is valid and automatically takes us through
                          //     // if userResult is null set state of error to error message
                          //     setState(() {
                          //       error = 'Please supply a valid email';
                          //     });
                          //   }
                          // }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
