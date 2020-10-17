import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Hospital extends StatefulWidget {
  String mobilenum = '0522121234';
  @override
  HospitalState createState() => new HospitalState();
}

class HospitalState extends State<Hospital> {
  double screenHeight;
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

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
                                    Image.asset("assets/icons/hospital.png"),
                                title: Text('St. Klein Hospital'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text('Location : New York'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Contact'),
                                  color: Colors.pink[100],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () {
                                    customLaunch('tel:+1 555 555 555');
                                  },
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
                                    Image.asset("assets/icons/hospital.png"),
                                title: Text('AIG Hospital'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text('Location : Washington DC'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Contact'),
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
                                    Image.asset("assets/icons/hospital.png"),
                                title: Text('Chemotherapy Centre'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text('Location : California'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Contact'),
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
                                    Image.asset("assets/icons/hospital.png"),
                                title: Text('Mammogram Centre'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text('Location : New York'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Contact'),
                                  color: Colors.pink[100],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () {
                                    customLaunch('tel:+1 555 555 555');
                                  },
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
                                    Image.asset("assets/icons/hospital.png"),
                                title: Text('DW Hospital'),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                subtitle: Text('Location : New York'),
                                isThreeLine: true,
                                trailing: RaisedButton(
                                  child: Text('Contact'),
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
