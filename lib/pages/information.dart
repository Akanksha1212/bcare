import 'package:flutter/material.dart';
import 'package:bcare/pages/tabs/FirstScreen.dart';
import 'package:bcare/pages/tabs/SecondScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatelessWidget {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xff90b7e2),
          appBar: AppBar(
            elevation: 2,
            brightness: Brightness.light,
            backgroundColor: Color(0xff90b7e2),
            title: Text(
              'Information',
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: Color(0xFF20124d),
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Symptoms",
                ),
                Tab(text: "Self Exam")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
