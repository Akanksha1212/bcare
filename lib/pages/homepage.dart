import 'package:bcare/components/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:bcare/components/gridDashboard.dart';
import 'package:bcare/components/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bcare/pages/profile.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xffc3aed6),
      // #ffb8c5 #ff6e8d #ff8ba4
      appBar: AppBar(
        elevation: 4,
        brightness: Brightness.light,
        backgroundColor: Color(0xffc3aed6),
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
      drawer: NavDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Dashboard(),
          SizedBox(
            height: 20,
          ),
          GridDashboard()
        ],
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width / 1.7, //20.0,
      child: Drawer(
        child: Container(
          color: Color(0xffc3aed6),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  '',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    color: Color(0xffffd5cd),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/hands.png'))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.input),
                    title: Text('Welcome'),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading: Icon(Icons.verified_user_rounded),
                    title: Text('Profile'),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile())),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    // onTap: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SliderDialog())),
                  ),
                  ListTile(
                    leading: Icon(Icons.border_color),
                    title: Text('Feedback'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
