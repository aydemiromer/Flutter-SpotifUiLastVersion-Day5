import 'package:flutter/material.dart';

class YeniCikanlar extends StatelessWidget {
  const YeniCikanlar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      color: Colors.black87,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.indyturk.com/sites/default/files/styles/1368x911/public/article/main_image/2020/06/27/406901-801155084.jpg?itok=2bRdn4ne"),
            radius: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "YENİ ÇIKANLAR:",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 16,
                ),
              ),
              Text(
                "Mabel Matiz",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
