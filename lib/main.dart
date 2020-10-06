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
