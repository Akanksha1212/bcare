import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  @override
  FirstScreenState createState() => new FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xff9ad7e9),
      body: Container(
        child: new SingleChildScrollView(
          child: new ConstrainedBox(
            constraints: new BoxConstraints(),
            child: new Container(
              child: new Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Text(
                            'Do you have any of these problem? If yes, then you immediately need to consult a Doctor',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: <Widget>[
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/1.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Nipple discharge')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/2.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Lumping or Thickening')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/3.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Skin texture change')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/4.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Armpit pain')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/5.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Change in how the nipple looks')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/6.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Visible Lump')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/7.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Dimpling')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/8.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Pulled in Nipple')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/9.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Skin Irritation')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/symptoms/10.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Skin Dimpling')
                                ],
                              ),
                            ),
                            color: Color(0xff9ad7e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // add form here
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
