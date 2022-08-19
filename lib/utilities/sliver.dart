import 'package:flutter/material.dart';

class Sliver extends StatefulWidget {
  const Sliver({Key? key}) : super(key: key);

  @override
  State<Sliver> createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey[300],
            title: Text(
              "Turn your smartphone into a diagnostic device",
              style: TextStyle(color: Colors.black),
            ),
            expandedHeight: 130.0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 25, bottom: 45),
              title: Text(
                '• Instant resolution \n• No other requirements',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.0,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 30, bottom: 10),
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        'assets/images/handHoldingPhone.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
