import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  const Recommend({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 120,
          child: Image.asset(
            'assets/kendrick.jpg',
            filterQuality: FilterQuality.high,
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          "Kendrick Lamar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
