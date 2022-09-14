import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ServiceCharges extends StatelessWidget {
  const ServiceCharges({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(left: 21, right: 21, bottom: 2, top: 2),
            child: Text(
              'Customer Support\nService Charges',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 21, right: 21, top: 10),
            child: Text(
              'Please see details below of fees aplicable for use of the KER Customer support. By accepting the ' +
                  'Terms and Conditions of use of the service, Service Users are also accepting this Schedule of Fees. All fees shall be charged in Euros.',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            height: 600,
            child: Image(
              image: AssetImage("assets/images/serviceImage.JPG"),
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
