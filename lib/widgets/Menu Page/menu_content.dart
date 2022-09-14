import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:share_plus/share_plus.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:store_redirect/store_redirect.dart';

class MenuContent extends StatelessWidget {
  const MenuContent({Key? key}) : super(key: key);

  // Main account page content build
  @override
  Widget build(BuildContext context) {
    // return the content in a list view
    return ListView(
      children: <Widget>[
        _buildMenu(context, "profile", Icons.account_circle, "My Profile"),
        _buildMenu(context, "privacy", Icons.lock, "Privacy Policy"),
        _buildMenu(context, "about", Icons.info, "About the App"),
        _buildMenu(context, "help", Icons.help, "Help"),
        _buildMenu(context, "tandc", Icons.description, "Terms and Conditions"),
        _buildMenu(context, "issues", Icons.chat, "Report Issues & Feedback"),
        _buildMenu(context, "faqs", Icons.question_answer, "FAQs"),
        _buildMenu(context, "rate", Icons.star_rate, "Rate Us"),
        _buildMenu(context, "share", Icons.share, "Share the App"),
        Column(
          children: [
            SizedBox(height: 30),
            Container(
              height: 40,
              width: ResponsiveValue(
                context,
                defaultValue: 130.0,
                valueWhen: const [
                  Condition.smallerThan(
                    name: MOBILE,
                    value: 110.0,
                  ),
                ],
              ).value,
              // create the elevated button
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300], elevation: 0),
                // Set the child to be a text widget with purpose of button
                child: Text(
                  'Log Out',
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
                      fontWeight: FontWeight.bold),
                ),
                // On press send message to ker
                onPressed: () {
                  print("Logged out");
                  Navigator.pushNamed(context, '/Welcome');
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

_buildMenu(BuildContext context, String choice, IconData icon, String title) {
  final String _content =
      'Replace this with link to the app store page with app';

  void _shareContent() {
    Share.share(_content);
  }

  final _dialog = RatingDialog(
    // your app's name?
    title: Text('Rate Us On App Store'),
    // encourage your user to leave a high rating?
    message: Text('Select Number of Stars 1 - 5 to Rate This App'),
    // your app's logo?
    image: Image.asset('assets/images/kerlogo.jpg', height: 50),
    submitButtonText: 'Submit',
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {
      print('rating: ${response.rating}, comment: ${response.comment}');
      if (response.rating < 3.0) {
        // send their comments to your email or anywhere you wish
        // ask the user to contact you instead of leaving a bad review
      } else {
        //go to app store
        StoreRedirect.redirect(
            // add in android app store id and ios app store id here
            androidAppId: '',
            iOSAppId: '');
      }
    },
  );

  // Create a container inside a Gesture Detector
  // This allows us to capture whenever the container is tapped and take us to the Share the App page
  return GestureDetector(
    onTap: () {
      if (choice == "share") {
        _shareContent();
      } else if (choice == "rate") {
        // load dialog to show it
        showDialog(
          context: context,
          builder: (context) => _dialog,
        );
      } else {
        print(choice + " Dectection");
        _menuNavigator(context, choice);
      }
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: double.infinity,
      height: ResponsiveValue(
        context,
        defaultValue: 90.0,
        valueWhen: const [
          Condition.smallerThan(
            name: MOBILE,
            value: 55.0,
          ),
        ],
      ).value,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 30,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 25,
                    child: Icon(
                      icon,
                      size: 45,
                      color: Color.fromARGB(255, 0, 90, 172),
                    ),
                  ),
                  Text(
                    title,
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
                ],
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 25,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 35,
                    color: Color.fromARGB(255, 0, 90, 172),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      padding: EdgeInsets.only(left: 30),
      margin: EdgeInsets.only(top: 24, left: 10, right: 10),
    ),
  );
}

_menuNavigator(BuildContext context, String choice) {
  switch (choice) {
    case 'profile':
      {
        Navigator.pushNamed(context, '/Profile');
      }
      break;

    case 'privacy':
      {
        Navigator.pushNamed(context, '/Privacy');
      }
      break;

    case 'about':
      {
        Navigator.pushNamed(context, '/About');
      }
      break;

    case 'help':
      {
        Navigator.pushNamed(context, '/Help');
      }
      break;

    case 'tandc':
      {
        Navigator.pushNamed(context, '/TermsConds');
      }
      break;

    case 'sec':
      {
        Navigator.pushNamed(context, '/Security');
      }
      break;

    case 'issues':
      {
        Navigator.pushNamed(context, '/IssuesFeed');
      }
      break;

    case 'faqs':
      {
        Navigator.pushNamed(context, '/Faqs');
      }
      break;

    default:
      break;
  }
}
