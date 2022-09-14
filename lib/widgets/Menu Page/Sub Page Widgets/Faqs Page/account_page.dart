import 'package:flutter/material.dart';

class AccountFaq extends StatefulWidget {
  const AccountFaq({Key? key}) : super(key: key);

  @override
  State<AccountFaq> createState() => _AccountFaqState();
}

class _AccountFaqState extends State<AccountFaq> {
  final List<Item> _data = [
    Item(name: "Question 1", text: "Answer to Question 1"),
    Item(name: "Question 2", text: "Answer to Question 2"),
    Item(name: "Question 3", text: "Answer to Question 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return bodyContent();
  }

  bodyContent() {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        elevation: 1,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _data[index].isExpanded = !isExpanded;
          });
        },
        expandedHeaderPadding: EdgeInsets.only(bottom: 0),
        animationDuration: const Duration(seconds: 1),
        children: _data.map<ExpansionPanel>(
          (Item item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(
                    item.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                );
              },
              body: ListTile(
                title: Text(
                  item.text,
                  style: TextStyle(fontSize: 19),
                ),
                tileColor: Colors.white,
                contentPadding: const EdgeInsets.all(32),
              ),
              isExpanded: item.isExpanded,
              canTapOnHeader: true,
            );
          },
        ).toList(),
      ),
    );
  }
}

class Item {
  String name;
  String text;
  bool isExpanded = false;
  Item({required this.name, required this.text});
}
