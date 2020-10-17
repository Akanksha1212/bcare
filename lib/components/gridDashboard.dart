import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bcare/pages/homepage.dart';
import 'package:bcare/pages/information.dart';
import 'package:bcare/pages/qna.dart';
import 'package:bcare/pages/diet/diet.dart';
import 'package:bcare/pages/journal/journal.dart';
import 'package:bcare/pages/sgmap.dart';
import 'package:bcare/pages/forum/home_screen.dart';
import 'package:bcare/pages/fund.dart';
import 'package:bcare/pages/hospital.dart';
import 'package:bcare/medi.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Information",
      img: "assets/images/info.png",
      screen: Information());

  Items item2 = new Items(
    title: "Question?",
    img: "assets/images/ques.png",
    screen: QuesAns(),
  );
  Items item3 = new Items(
    title: "Forum",
    img: "assets/images/forum.png",
    screen: HomePage(),
  );

  Items item4 = new Items(
      title: "Medicines", img: "assets/images/med.png", screen: Medi());
  Items item5 = new Items(
    title: "Diet",
    img: "assets/images/food.png",
    screen: Diet(),
  );
  Items item6 = new Items(
      title: "Journal", img: "assets/images/note.png", screen: Journal());
  Items item7 = new Items(
      title: "Fundraiser", img: "assets/images/fund.png", screen: Fund());
  Items item8 = new Items(
      title: "Support Group", img: "assets/images/lsg.png", screen: MapView());
  Items item9 = new Items(
      title: "Treatment",
      img: "assets/images/hospital.png",
      screen: Hospital());
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8,
      item9,
    ];
    var color = 0xff8675a9;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 14, right: 14),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: myList.map((data) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 70,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.abel(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
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
