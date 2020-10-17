import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/back3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Color(0xff90b7e2),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/giphy.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi! I am B-Care Bunny",
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Color(0xFF20124d),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          child: Text(
                            '''I am here to help you. Have\nquestions about Symptoms,\nTreatments, Diet etc.\nTalking to me can help ''',
                            maxLines: 20,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Color(0xFF20124d),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 40,
                          width: 200,
                          child: RaisedButton(
                            child: Text(
                              'Talk to me',
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      color: Color(0xFF20124d),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                            ),
                            color: Color(0xffc3aed6),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                                side: BorderSide(color: Colors.black)),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/back5.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Usable Flower for Health',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text use for printing and type script',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/think.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Text(
                  //   'Usable Flower for Health',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 18.0,
                  //   ),
                  // ),
                  SizedBox(
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '\nBreast Cancer can be detected at an early stage. ',
                      style: GoogleFonts.abel(
                          textStyle: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 19,
                              fontWeight: FontWeight.w800)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
          options: CarouselOptions(
            height: 300.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}
