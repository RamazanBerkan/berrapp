import 'package:berrapp/pages/menuwidget.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Payment Page"),
        leading:MenuWidget() ,
        
        ),
    );
  }
}