import 'package:berrapp/pages/menuwidget.dart';
import 'package:flutter/material.dart';

class RateUsPage extends StatefulWidget {
  RateUsPage({Key? key}) : super(key: key);

  @override
  _RateUsPageState createState() => _RateUsPageState();
}

class _RateUsPageState extends State<RateUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rate us"),
        leading:MenuWidget() ,
        
        ),);
  }
}