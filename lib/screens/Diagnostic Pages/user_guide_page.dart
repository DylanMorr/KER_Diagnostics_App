import 'package:flutter/material.dart';

class UserGuide extends StatelessWidget {
  const UserGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: 40),
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.grey[300],
            width: double.infinity,
            padding: EdgeInsets.only(left: 21, right: 21, bottom: 10, top: 10),
            child: Text(
              'User Guide',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 700,
            padding: EdgeInsets.only(left: 21, right: 21, top: 30),
            child: ListView(
              children: [
                Text(
                  "1. Select the vessel part you want to diagnose.",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 40),
                Text(
                  "2. Use the chatbot for the appropriate part.",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 40),
                Text(
                  "3. Consider your issue and respond accordingly.",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 40),
                Text(
                  "4. The tool will provide the possible causes and the appropriate solutions.",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 40),
                Text(
                  "5. If you are still not able to solve the issue, please consult us using the app.",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
