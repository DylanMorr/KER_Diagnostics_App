import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/screens/Diagnostic%20Pages/messages.dart';

class BotTest extends StatefulWidget {
  const BotTest({Key? key}) : super(key: key);

  @override
  State<BotTest> createState() => _BotTestState();
}

class _BotTestState extends State<BotTest> {
  // Create a late dialogflowtter variable
  late DialogFlowtter dialogFlowtter;
  // setup a text editing controller
  final TextEditingController _controller = TextEditingController();

  // create an empty array for messages
  List<Map<String, dynamic>> messages = [];

  // initialise the state
  @override
  void initState() {
    super.initState();
    // get the state from the instance of the file diag_flow_auth.json
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
  }

  @override
  Widget build(BuildContext context) {
    // setup bot display
    return Scaffold(
      // appbar with title Bot
      appBar: AppBar(
        title: Text('Bot'),
        backgroundColor: Color.fromARGB(255, 0, 0, 255),
      ),
      // return a container with a column of children in the main body
      body: Container(
        child: Column(
          children: [
            // create an expaned an set the child to the messages screen page and pass in messages
            Expanded(child: MessagesScreen(messages: messages)),
            // container for textfield and send button
            Container(
              // setup padding
              padding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 8,
              ),
              // set color to blue
              color: Color.fromARGB(255, 0, 0, 255),
              // set a row with an expanded textfield and an iconbutton
              child: Row(
                children: [
                  // main text entry field
                  Expanded(
                    child: TextField(
                      // set controller to _controller
                      controller: _controller,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // icon button to send message
                  IconButton(
                    // on press send message using controller then clear it
                    onPressed: () {
                      sendMessage(_controller.text);
                      _controller.clear();
                    },
                    // use send icon
                    icon: Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // send message function
  sendMessage(String text) async {
    // check if text is empy
    if (text.isEmpty) {
      // output that its emopty
      print('Message is empty');
    } else {
      // if not empty set the state to add the message
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      // get the response back from the bot
      DetectIntentResponse response = await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));
      // if response is null return
      if (response.message == null) return;
      // set the state of add message to response.message
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  // add message function
  addMessage(Message message, [bool isUserMessage = false]) {
    // add a message and pass message and isUserMessage check
    messages.add({'message': message, 'isUserMessage': isUserMessage});
  }
}
