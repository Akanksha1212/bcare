import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hospital extends StatefulWidget {
  @override
  HospitalState createState() => new HospitalState();
}

class HospitalState extends State<Hospital> {
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
                        height: 40,
                      ),
                      Image(
                        image: AssetImage('assets/images/blood.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          // scrollDirection: Axis.vertical,
                          children: <Widget>[
                            Card(
                              child: ListTile(
                                leading:
                                    Image.asset("assets/images/Hospital.png"),
                                title: Text('Stage 3 Cancer'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text(
                                    'Hospital Raised : 4000 \nLocation : New York'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Donate'),
                                  color: Colors.pink[100],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () {},
                                ),
                              ),
                              color: Colors.blue[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading:
                                    Image.asset("assets/images/Hospital.png"),
                                title: Text('Breast Cancer'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text(
                                    'Hospital Raised : 23000 \nLocation : Washington DC'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Donate'),
                                  color: Colors.pink[100],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () {},
                                ),
                              ),
                              color: Colors.blue[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading:
                                    Image.asset("assets/images/Hospital.png"),
                                title: Text('Chemotherapy Treatment'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text(
                                    'Hospital Raised : 8000 \nLocation : California'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Donate'),
                                  color: Colors.pink[100],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () {},
                                ),
                              ),
                              color: Colors.blue[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading:
                                    Image.asset("assets/images/Hospital.png"),
                                title: Text('Metastatic Melanoma'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text(
                                    'Hospital Raised : 9000 \nLocation : New York'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Donate'),
                                  color: Colors.pink[100],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () {},
                                ),
                              ),
                              color: Colors.blue[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading:
                                    Image.asset("assets/images/Hospital.png"),
                                title: Text('Breast Cancer'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text(
                                    'Hospital Raised : 4000 \nLocation : New York'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Donate'),
                                  color: Colors.pink[100],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () {},
                                ),
                              ),
                              color: Colors.blue[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
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
        ));
  }
}
