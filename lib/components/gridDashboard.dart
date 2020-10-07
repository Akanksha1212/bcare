import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bcare/pages/homepage.dart';
import 'package:bcare/pages/information.dart';
import 'package:bcare/pages/qna.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Information",
      img: "assets/icons/symptoms.png",
      screen: Information());

  Items item2 = new Items(
    title: "Question?",
    img: "assets/icons/consult.png",
    screen: QuesAns(),
  );
  Items item3 = new Items(
    title: "Forum",
    img: "assets/icons/forum.png",
    screen: Home(),
  );

  Items item4 = new Items(
      title: "Medicines", img: "assets/icons/med.png", screen: Home());
  Items item5 = new Items(
    title: "Diet",
    img: "assets/icons/food.png",
    screen: Home(),
  );
  Items item6 =
      new Items(title: "Journal", img: "assets/icons/info.png", screen: Home());
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
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: myList.map((data) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(color),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 60,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
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
