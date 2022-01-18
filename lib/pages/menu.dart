import 'package:berrapp/models/menuItem.dart';
import 'package:flutter/material.dart';


class MenuItems{
  static const payment= MenuItem('Payment',Icons.payment );
  static const notification= MenuItem('Notification',Icons.insert_emoticon_outlined );
  static const help= MenuItem('Help',Icons.payment );
  static const aboutUs= MenuItem('About Us',Icons.info_outline );
  static const rateUs= MenuItem('Rate Us',Icons.star_border );
  static const upload= MenuItem('Upload',Icons.upload_file );
   static const download= MenuItem('Download and show',Icons.download );

  static const all=<MenuItem>[
    payment,notification,help,aboutUs,rateUs,upload,download
  ];

}


class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;


  const MenuPage( {
    Key? key, 
    required this.currentItem,
    required this.onSelectedItem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(), 
      child: Scaffold( 
        backgroundColor: Colors.indigo,
    
        body: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
    
            ...MenuItems.all.map(buildMenuItem).toList(),
    
            Spacer(flex: 2,)
          ],
        ),),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item)=> ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.black26,
      selected: currentItem==item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap:()=> onSelectedItem(item) ,
  
    ),
  );

}