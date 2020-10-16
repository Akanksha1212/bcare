import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Diet extends StatefulWidget {
  @override
  DietState createState() => new DietState();
}

class DietState extends State<Diet> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xff8675a9),
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
                        Image(
                          image: AssetImage('assets/images/foodcon.png'),
                          height: 400,
                          width: 400,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Text(
                            'Diet that will help you recover fast',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
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
                            child: ListTile(
                              leading: Image.asset("assets/images/vegan.png"),
                              title: Text(
                                'Vegan',
                                style: GoogleFonts.abel(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 20),
                              // subtitle: Text('Play these games to improve your focus'),
                              // isThreeLine: true,
                              trailing: RaisedButton(
                                child: Text('View'),
                                color: Colors.pink[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    side: BorderSide(color: Colors.black)),
                                onPressed: () {},
                              ),
                            ),
                            color: Colors.blue[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: Image.asset("assets/images/veg.png"),
                              title: Text(
                                'Vegetarian',
                                style: GoogleFonts.abel(
                                    textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 20),
                              // subtitle: Text('Play these games to improve your focus'),
                              // isThreeLine: true,
                              trailing: RaisedButton(
                                child: Text('View'),
                                color: Colors.pink[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    side: BorderSide(color: Colors.black)),
                                onPressed: () {},
                              ),
                            ),
                            color: Colors.blue[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: Image.asset("assets/images/nonveg.png"),
                              title: Text(
                                'Non-vegetarian',
                                style: GoogleFonts.abel(
                                    textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 20),
                              // subtitle: Text('Play these games to improve your focus'),
                              // isThreeLine: true,
                              trailing: RaisedButton(
                                child: Text('View'),
                                color: Colors.pink[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    side: BorderSide(color: Colors.black)),
                                onPressed: () {},
                              ),
                            ),
                            color: Colors.blue[100],
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
