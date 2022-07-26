import 'package:flutter/material.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

/*
*
*   This is not being used but i left it in incase you want to use kommunicate bots
*
*/


class DiagBot extends StatelessWidget {
  const DiagBot({Key? key}) : super(key: key);

  // Main page return build
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChatBot(),
    );
  }
}

// stateful class for Kommunicates chat bot
class ChatBot extends StatefulWidget {
  const ChatBot({Key? key}) : super(key: key);

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // center align everything
      alignment: Alignment.center,
      children: [
        // Positioned FloatingActionButton
        Positioned(
          // position from the top 530
          top: 530,
          // create FloatingActionButton
          child: FloatingActionButton(
            onPressed: () async {
              try {
                dynamic conversationObject = {
                  'appId':
                      '2e02d1f8b8f5dd2a567cbefd916241c26', // The [APP_ID](https://dashboard.kommunicate.io/settings/install) obtained from kommunicate dashboard.
                };
                dynamic result =
                    await KommunicateFlutterPlugin.buildConversation(
                        conversationObject);
                print("Conversation builder success: " + result.toString());
              } on Exception catch (e) {
                print("Conversation builder error : " + e.toString());
              }
            },
            child: Icon(Icons.chat),
            backgroundColor: Color.fromARGB(255, 255, 0, 0),
          ),
        ),
      ],
    );
  }
}
