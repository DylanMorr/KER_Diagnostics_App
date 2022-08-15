import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  // add a list of messages parameter
  final List messages;
  const MessagesScreen({Key? key, required this.messages}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    // varaible to get width
    var w = MediaQuery.of(context).size.width;
    // return a seperated list view to hold messages
    return ListView.separated(
      itemBuilder: (context, index) {
        // return a container to hold messages
        return Container(
          // set the margin
          margin: EdgeInsets.all(10),
          // return a row
          child: Row(
            // align messages to start or end depending on if it isUserMessage is true
            mainAxisAlignment: widget.messages[index]['isUserMessage']
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                // setup padding
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                // add a decoration
                decoration: BoxDecoration(
                  // add a border radius to each corner
                  borderRadius: BorderRadius.only(
                    // set bottom left to radius 20
                    bottomLeft: Radius.circular(
                      20,
                    ),
                    // set top right to radius 20
                    topRight: Radius.circular(20),
                    // set bottom right to be 0 or 20
                    bottomRight: Radius.circular(
                        widget.messages[index]['isUserMessage'] ? 0 : 20),
                    // set top left to be 20 or 0
                    topLeft: Radius.circular(
                        widget.messages[index]['isUserMessage'] ? 20 : 0),
                  ),
                  // set colors of text boxes
                  color: widget.messages[index]['isUserMessage']
                      ? Color.fromARGB(255, 255, 0, 0)
                      : Color.fromARGB(255, 0, 0, 255),
                ),
                // set width
                constraints: BoxConstraints(maxWidth: w * 2 / 3),
                // output bot text message
                child: Text(
                  widget.messages[index]['message'].text.text[0],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (_, i) => Padding(padding: EdgeInsets.only(top: 10)),
      itemCount: widget.messages.length,
    );
  }
}
