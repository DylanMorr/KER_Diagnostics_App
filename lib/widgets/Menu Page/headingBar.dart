import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeadingBar extends StatelessWidget {
  final IconData icon;
  final String title;
  const HeadingBar({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      width: double.infinity,
      height: ResponsiveValue(
        context,
        defaultValue: 90.0,
        valueWhen: const [
          Condition.smallerThan(
            name: MOBILE,
            value: 55.0,
          ),
        ],
      ).value,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 30,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 25,
                    child: Icon(
                      icon,
                      size: 45,
                      color: Color.fromARGB(255, 0, 90, 172),
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 24.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 18.0,
                          ),
                        ],
                      ).value,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 30),
    );
  }
}
