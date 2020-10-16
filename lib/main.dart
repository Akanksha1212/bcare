import 'package:flutter/material.dart';
import 'package:bcare/sign/logsign.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bcare',
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}

// color
// blue #26beb5 #1c9c97
//baby pink #ffecd9  #ffcfcf
// light purple #dbc6f2
// cream #ffe4ae
