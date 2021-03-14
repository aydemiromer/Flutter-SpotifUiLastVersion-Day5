import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_ui5/widgets/BottomNavigation.dart';
import 'package:spotify_ui5/widgets/HeaderSongs.dart';
import 'package:spotify_ui5/widgets/Recommend.dart';
import 'package:spotify_ui5/widgets/Text.dart';
import 'package:spotify_ui5/widgets/TopBar.dart';
import 'package:spotify_ui5/widgets/YeniCikanlar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color(0xFF191919),
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black87,
          bottomNavigationBar: BottomNavigation(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBar(),
                SizedBox(height: 14.0),
                PaddingTop(),
                SizedBox(height: 8.0),
                PaddingTop(),
                SizedBox(height: 8.0),
                PaddingTop(),
                SizedBox(height: 8.0),
                YeniCikanlar(),
                SizedBox(
                  height: 20,
                ),
                TextS(
                  name: "Son Çalınanlar",
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 16.0),
                      Recommend(),
                      SizedBox(width: 16.0),
                      Recommend(),
                      SizedBox(width: 16.0),
                      Recommend(),
                      SizedBox(width: 16.0),
                      Recommend(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextS(
                  name: "Beğendiklerin ve dahası",
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 16.0),
                      Recommend(),
                      SizedBox(width: 16.0),
                      Recommend(),
                      SizedBox(width: 16.0),
                      Recommend(),
                      SizedBox(width: 16.0),
                      Recommend(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
