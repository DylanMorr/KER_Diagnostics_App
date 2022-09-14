import 'package:flutter/material.dart';

class SecurityFaq extends StatefulWidget {
  const SecurityFaq({Key? key}) : super(key: key);

  @override
  State<SecurityFaq> createState() => _SecurityFaqState();
}

class _SecurityFaqState extends State<SecurityFaq> {
  final List<Item> _data = [
    Item(
        name: "How secure is my data?",
        text:
            "We take privacy and security of your data very seriously. We understand clearly that your data is one of our most important assets. All the information collected from you is stored securely in our servers. We employ the best techniques in the data security field to ensure that this information remains secure. We do use your data in an anonymised form to train our Artificial Intelligence algorithms. However, this aggregated data cannot in anyway be traced back to you. No personally indentifiable information is a part of this aggregated data."),
    Item(
        name: "Who can see my data?",
        text:
            "Only our DB admins and IT team who handle the database servers have access to your data."),
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
