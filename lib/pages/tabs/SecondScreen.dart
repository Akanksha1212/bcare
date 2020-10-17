import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {
  @override
  SecondScreenState createState() => new SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xffc3aed6),
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
                            'Breast Self Examination is recommended once every month, 2-3 days after Period',
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
                                    'assets/self/1.png',
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
                                    'assets/self/2.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Touch the nipple area')
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
                                    'assets/self/3.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Inward and Outward')
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
                                    'assets/self/4.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Up and Down')
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
                                    'assets/self/5.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('Circles')
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
