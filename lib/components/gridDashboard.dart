import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bcare/pages/homepage.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Ask for Help", img: "assets/icons/symptoms.png", screen: Home());

  Items item2 = new Items(
    title: "Help Others",
    img: "assets/icons/consult.png",
    screen: Home(),
  );
  Items item3 = new Items(
    title: "Activities",
    img: "assets/icons/forum.png",
    screen: Home(),
  );

  Items item4 =
      new Items(title: "Events", img: "assets/icons/med.png", screen: Home());
  Items item5 = new Items(
    title: "Events",
    img: "assets/icons/food.png",
    screen: Home(),
  );
  Items item6 = new Items(
      title: "Events", img: "assets/images/health.png", screen: Home());
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
    ];
    var color = 0xff90b7e2;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 3,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 55,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => data.screen),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Widget screen;
  Items({this.title, this.img, this.screen});
}
