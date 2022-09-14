import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/heading_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:select_form_field/select_form_field.dart';

class IssuesContent extends StatefulWidget {
  @override
  _IssuesContentState createState() => _IssuesContentState();
}

class _IssuesContentState extends State<IssuesContent> {
  final formKey = new GlobalKey<FormState>();

  late String areas;
  late String _areasChoice;
  Object? groupValue;
  Object? _groupChoice;
  late String message;
  late String _messageFeedback;

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'area1',
      'label': 'Area 1',
    },
    {
      'value': 'area2',
      'label': 'Area 2',
    },
    {
      'value': 'area3',
      'label': 'Area 3',
    },
  ];

  @override
  void initState() {
    super.initState();
    areas = '';
    _areasChoice = '';
    groupValue = 0;
    _groupChoice = 0;
    message = "";
    _messageFeedback = "";
  }

  _saveForm() {
    var form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      setState(() {
        _areasChoice = areas.toString();
        print("Chosen area with issue: " + _areasChoice);
        _groupChoice = groupValue;
        print("Satisfaction Level: " + _groupChoice.toString());
        _messageFeedback = message;
        print("Feedback: " + _messageFeedback);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeadingBar(icon: Icons.chat, title: "Report Issues & Feedback"),
        Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 8),
                child: Text(
                  "Which area of the app do you think needs improving?",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                margin: EdgeInsets.all(15),
                child: SelectFormField(
                  type: SelectFormFieldType.dropdown,
                  hintText: "Select",
                  items: _items,
                  autovalidate: false,
                  validator: (value) {
                    if (value == null || value.length == 0) {
                      return 'Please select one or more options';
                    }
                    return null;
                  },
                  initialValue: areas,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      areas = value;
                    });
                  },
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "How satisfied are you with the app experience?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Wrap(
                      spacing: 202,
                      children: [
                        Text(
                          "1 - very unsatisfied",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "5 - very satisfied",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GFCard(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GFRadio(
                      type: GFRadioType.custom,
                      activeIcon: Icon(Icons.looks_one_outlined, size: 35),
                      size: GFSize.LARGE,
                      value: 1,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: Icon(Icons.looks_one_outlined, size: 35),
                      customBgColor: GFColors.WARNING,
                      activeBgColor: GFColors.SUCCESS,
                      activeBorderColor: GFColors.DARK,
                    ),
                    GFRadio(
                      type: GFRadioType.custom,
                      activeIcon: Icon(Icons.looks_two_outlined, size: 35),
                      size: GFSize.LARGE,
                      value: 2,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: Icon(Icons.looks_two_outlined, size: 35),
                      customBgColor: GFColors.WARNING,
                      activeBgColor: GFColors.SUCCESS,
                      activeBorderColor: GFColors.DARK,
                    ),
                    GFRadio(
                      type: GFRadioType.custom,
                      activeIcon: Icon(Icons.looks_3_outlined, size: 35),
                      size: GFSize.LARGE,
                      value: 3,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: Icon(Icons.looks_3_outlined, size: 35),
                      customBgColor: GFColors.WARNING,
                      activeBgColor: GFColors.SUCCESS,
                      activeBorderColor: GFColors.DARK,
                    ),
                    GFRadio(
                      type: GFRadioType.custom,
                      activeIcon: Icon(Icons.looks_4_outlined, size: 35),
                      size: GFSize.LARGE,
                      value: 4,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: Icon(Icons.looks_4_outlined, size: 35),
                      customBgColor: GFColors.WARNING,
                      activeBgColor: GFColors.SUCCESS,
                      activeBorderColor: GFColors.DARK,
                    ),
                    GFRadio(
                      type: GFRadioType.custom,
                      activeIcon: Icon(Icons.looks_5_outlined, size: 35),
                      size: GFSize.LARGE,
                      value: 5,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: Icon(Icons.looks_5_outlined, size: 35),
                      customBgColor: GFColors.WARNING,
                      activeBgColor: GFColors.SUCCESS,
                      activeBorderColor: GFColors.DARK,
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What is the issue or feedback you want to report/provide us today?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                margin:
                    EdgeInsets.only(left: 15, right: 15, bottom: 30, top: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                // Setup a ListTile for the last form field
                child: ListTile(
                  // Message Form Field
                  subtitle: TextFormField(
                    // set the field to be a multiline so text is easier to read
                    keyboardType: TextInputType.multiline,
                    // max lines shown at one time is 3
                    maxLines: 10,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Colors.white,
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
              ),
              Container(
                width: 150,
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 90, 172),
                  ),
                  child: Text('Submit'),
                  onPressed: _saveForm,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
