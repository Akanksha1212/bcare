import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NonVeg extends StatefulWidget {
  @override
  NonVegState createState() => new NonVegState();
}

class NonVegState extends State<NonVeg> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xff8675a9),
      appBar: AppBar(
        elevation: 4,
        brightness: Brightness.light,
        backgroundColor: Color(0xffc3aed6),
        title: Text(
          'NonVegetarian',
          style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
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
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: <Widget>[
                          Card(
                            child: ListTile(
                              leading:
                                  Image.asset("assets/images/NonVegan.png"),
                              title: Text(
                                'Breakfast (310 calories) ',
                                style: GoogleFonts.abel(
                                    textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 20),
                              subtitle: Text(
                                  '3/4 cup oatmeal cooked in 1 1/2 cup water \n 1/3 cup raspberries\n Top oatmeal with raspberries and a pinch of cinnamon.'),
                              isThreeLine: true,
                              trailing: RaisedButton(
                                child: Text('Done'),
                                color: Colors.pink[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    side: BorderSide(color: Colors.black)),
                                onPressed: () {},
                              ),
                            ),
                            color: Color(0xffc3aed6),
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
