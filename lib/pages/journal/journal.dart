import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Journal extends StatefulWidget {
  @override
  JournalState createState() => new JournalState();
}

class JournalState extends State<Journal> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  double _currentFatigueValue = 20;
  double _currentSliderValue = 20;
  String fatigue = 'Not at all tired';
  String sleep = 'Slept well';
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xffffdcdc),
        appBar: AppBar(
          elevation: 2,
          brightness: Brightness.light,
          backgroundColor: Color(0xff90b7e2),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: new Image.asset('assets/images/menu.png'),
              );
            },
          ),
        ),
        body: Container(
          child: new SingleChildScrollView(
            child: new ConstrainedBox(
              constraints: new BoxConstraints(),
              child: new Container(
                child: new Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
                              child: Column(children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'How are you feeling today?',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset(
                                          'assets/emoji/crying-1.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset(
                                          'assets/emoji/unhappy.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset(
                                          'assets/emoji/sad.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset(
                                          'assets/emoji/angry.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset(
                                          'assets/emoji/happy.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset(
                                          'assets/emoji/happy-1.png'),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 5, 5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Fatigue',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text(
                                    '$fatigue',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.deepPurple[300],
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Slider(
                                    value: _currentFatigueValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 5,
                                    activeColor: Colors.deepPurple[200],
                                    inactiveColor: Colors.deepPurple[100],
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentFatigueValue = value;
                                        if (value == 20) fatigue = 'Not tired';
                                        if (value == 40)
                                          fatigue = 'Faintly tired';
                                        if (value == 60) fatigue = 'Tired';
                                        if (value == 80) fatigue = 'Very Tired';
                                        if (value == 100) fatigue = 'Exhausted';
                                      });
                                      print(_currentFatigueValue);
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not Tired',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Text(
                                        'Exhausted',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 5, 5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Sleep Quality',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text(
                                    '$sleep',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.deepPurple[300],
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Slider(
                                    value: _currentSliderValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 5,
                                    activeColor: Colors.deepPurple[200],
                                    inactiveColor: Colors.deepPurple[100],
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentSliderValue = value;
                                        if (value == 20) sleep = 'Slept badly';
                                        if (value == 40)
                                          sleep = 'Slept somwhat poorly';
                                        if (value == 60) sleep = 'Slept fine';
                                        if (value == 80)
                                          sleep = 'Slept moderately well';
                                        if (value == 100) sleep = 'Slept well';
                                      });
                                      print(_currentSliderValue);
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Slept Badly',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Text(
                                        'Slept Well',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 5, 5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Fatigue',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text(
                                    '$fatigue',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.deepPurple[300],
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Slider(
                                    value: _currentSliderValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 5,
                                    activeColor: Colors.deepPurple[200],
                                    inactiveColor: Colors.deepPurple[100],
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentSliderValue = value;
                                        if (value == 20) fatigue = 'Not tired';
                                        if (value == 40)
                                          fatigue = 'Faintly tired';
                                        if (value == 60) fatigue = 'Tired';
                                        if (value == 80) fatigue = 'Very Tired';
                                        if (value == 100) fatigue = 'Exhausted';
                                      });
                                      print(_currentSliderValue);
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not Tired',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Text(
                                        'Exhausted',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
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
        ));
  }
}
