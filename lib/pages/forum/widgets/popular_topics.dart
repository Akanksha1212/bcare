import 'package:flutter/material.dart';

class PopularTopics extends StatelessWidget {
  List<String> contents = [
    "#Menopause",
    "#Mammogram",
    "#Pregnancy",
    "#Survivors"
  ];
  List<String> images = [
    "assets/health/menopause.png",
    "assets/health/mamo.png",
    "assets/health/pregnancy.png",
    "assets/health/survivors.png"
  ];
  List<Color> colors = [
    Colors.purple,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.redAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: contents.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(left: 20.0),
            height: 180,
            width: 170,
            decoration: BoxDecoration(
              color: colors[index],
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: AssetImage(images[index]),
                    height: 83,
                    width: 83,
                  ),
                  Text(
                    contents[index],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "30 posts",
                    style: TextStyle(
                        color: Colors.white, fontSize: 12, letterSpacing: .2),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
