import 'package:berrapp/pages/menuwidget.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("AboutUs"),
      leading:MenuWidget() ,
      ),);
  }
}