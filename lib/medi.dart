import 'package:flutter/material.dart';
import 'package:bcare/src/global_bloc.dart';
import 'package:bcare/src/ui/homepage/homepage.dart';
import 'package:provider/provider.dart';

class Medi extends StatefulWidget {
  @override
  _MediState createState() => _MediState();
}

class _MediState extends State<Medi> {
  GlobalBloc globalBloc;

  void initState() {
    globalBloc = GlobalBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<GlobalBloc>.value(
      value: globalBloc,
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
