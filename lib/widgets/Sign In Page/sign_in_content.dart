import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/utilities/nav_bar.dart';

class SignInContent extends StatefulWidget {
  const SignInContent({Key? key}) : super(key: key);

  @override
  State<SignInContent> createState() => _SignInContentState();
}

class _SignInContentState extends State<SignInContent> {
  // create a FormState key to identify form
  final _key = GlobalKey<FormState>();

  // create states to store email and password from text fields
  String emailOrPhone = '';
  String password = '';
  // create a error state for error messages from firebase
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: 400,
      height: 340,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
            // set key to global key _key
            key: _key,
            child: Column(
              children: <Widget>[
                // sized box to space out fields
                SizedBox(
                  height: 60.0,
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
                      hintText: 'Email or Phone',
                    ),
                    // valid form by checking if empty - if empty return string if not empty return null
                    validator: (value) => value!.isEmpty
                        ? 'Enter an Email or phone number'
                        : null,
                    // get value in field whenever it is changed
                    onChanged: (value) {
                      // set the state of email = value of text field
                      setState(() {
                        emailOrPhone = value;
                      });
                    },
                  ),
                ),

                // sized box to space out fields
                SizedBox(
                  height: 30.0,
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
                      // add hint text saying Password to let the user know what to enter
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

                // text widget to display error message for invalid email from firebase
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 12.0),
                ),

                Container(
                  width: 245,
                  padding: EdgeInsets.only(bottom: 10),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Forgot password?",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 90, 172),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //Navigator.pushNamed(context, '');
                              print("forgot password");
                            },
                        ),
                      ],
                    ),
                  ),
                ),

                Wrap(
                  spacing: 30,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 0, 90, 172),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BotNavBar(
                              selectedIndex: 0,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 200, 0, 0),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Welcome');
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
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
