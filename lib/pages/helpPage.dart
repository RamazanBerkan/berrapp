import 'package:berrapp/pages/menuwidget.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Help"),
      leading:MenuWidget() ,
      ),);
  }
}