import 'package:flutter/material.dart';

class ProfileDrawings extends StatefulWidget {
  const ProfileDrawings({Key? key}) : super(key: key);

  @override
  State<ProfileDrawings> createState() => _ProfileDrawingsState();
}

class _ProfileDrawingsState extends State<ProfileDrawings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 560,
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            primary: false,
            padding: const EdgeInsets.all(30),
            crossAxisSpacing: 50,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Icon(Icons.add_photo_alternate_outlined),
                color: Colors.grey[300],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Icon(Icons.add_photo_alternate_outlined),
                color: Colors.grey[300],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Icon(Icons.add_photo_alternate_outlined),
                color: Colors.grey[300],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Icon(Icons.add_photo_alternate_outlined),
                color: Colors.grey[300],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                padding: EdgeInsets.all(8),
                child: Icon(Icons.add_photo_alternate_outlined),
                color: Colors.grey[300],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Icon(Icons.add_photo_alternate_outlined),
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
