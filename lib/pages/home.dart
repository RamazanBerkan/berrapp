import 'package:berrapp/models/menuItem.dart';
import 'package:berrapp/pages/RateUs.dart';
import 'package:berrapp/pages/aboutUsPage.dart';
import 'package:berrapp/pages/downloadPage.dart';
import 'package:berrapp/pages/helpPage.dart';
import 'package:berrapp/pages/image_page.dart';
import 'package:berrapp/pages/menu.dart';
import 'package:berrapp/pages/notificationPage.dart';
import 'package:berrapp/pages/payment.dart';
import 'package:berrapp/pages/uploadPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  MenuItem currentItem=MenuItems.payment;
  @override
  Widget build(BuildContext context) => ZoomDrawer(

    style: DrawerStyle.Style1,
    borderRadius:40,
    angle:-10,
    slideWidth: MediaQuery.of(context).size.width*0.6,
    showShadow: true,
    backgroundColor: Colors.orangeAccent,
    mainScreen:getScreen(),
    menuScreen: Builder(
      builder:(context)=> MenuPage(
        currentItem:currentItem,
        onSelectedItem:(item){
          setState(() => currentItem=item);
          ZoomDrawer.of(context)!.close();
        },
      ),
    ),
  );

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.rateUs:
       return RateUsPage();
      case MenuItems.notification:
        return NotificationPage();
      case MenuItems.help:
        return HelpPage();
      case MenuItems.aboutUs:
        return AboutUsPage();
      case MenuItems.upload:
        return MainPage();// upload için  
      case MenuItems.download:
        return DownloadMainPage();// upload için  
       
      default:
        return RateUsPage();
    }

  }
}
