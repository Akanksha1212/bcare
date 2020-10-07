import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesAns extends StatefulWidget {
  @override
  QuesAnsState createState() => new QuesAnsState();
}

class QuesAnsState extends State<QuesAns> {
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
                    Image(
                      image: AssetImage('assets/icons/talk.png'),
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Text(
                            'We will answer all your queries',
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
                          GestureDetector(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'When should I begin screening\n for breast cancer?',
                                        style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                                color: Color(0xFF20124d),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),

                                      // Text('Nipple discharge')
                                    ],
                                  ),
                                ),
                                color: Color(0xff9ad7e9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(55),
                                ),
                              ),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        child: Container(
                                          height: 200,
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintMaxLines: 3,
                                                      hintText:
                                                          'Optional mammograms beginning at age 40. Annual mammograms for women ages 45 to 54\nMRIs and mammograms for some women at \nhigh risk of breast cancer'),
                                                ),
                                                SizedBox(
                                                  width: 320.0,
                                                  child: RaisedButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Okay",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    color:
                                                        const Color(0xFF1BC0C5),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              }),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Text(
                                    'What type of doctor should I \nsee if I think I have breast cancer?',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Color(0xFF20124d),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  // Text('Nipple discharge')
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
                                  Text(
                                    'What treatment options are\n typically available?',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Color(0xFF20124d),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  // Text('Nipple discharge')
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
                                  Text(
                                    'What are the possible side\n effects of each treatment option?',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Color(0xFF20124d),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  // Text('Nipple discharge')
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
                                  Text(
                                    'How can I manage treatment-\nrelated side effects?',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Color(0xFF20124d),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  // Text('Nipple discharge')
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
                                  Text(
                                    'What if I don’t \nwant cancer treatment?',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Color(0xFF20124d),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  // Text('Nipple discharge')
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
                                  Text(
                                    'Will my breast cancer treatment \naffect my ability to have a baby?',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Color(0xFF20124d),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  // Text('Nipple discharge')
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
                                  Text(
                                    'What type of breast cancer do I have?',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Color(0xFF20124d),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  // Text('Nipple discharge')
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
