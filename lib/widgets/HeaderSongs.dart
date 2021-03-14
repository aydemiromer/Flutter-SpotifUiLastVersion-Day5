import 'package:flutter/material.dart';

class HeaderSongs extends StatelessWidget {
  const HeaderSongs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFF313132),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              child: Image.asset(
                'assets/kendrick.jpg',
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "Kendrick\nLamar",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class PaddingTop extends StatelessWidget {
  const PaddingTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeaderSongs(),
          HeaderSongs(),
        ],
      ),
    );
  }
}
