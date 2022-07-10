// ignore_for_file: prefer_const_constructors 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyDrawer extends StatelessWidget {
  // final url = "https://www.whatsappimages.in/dp-for-girls-images/";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.pink,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink
              ),
              margin: EdgeInsets.zero,
              accountName: Text("Md Soamd"), accountEmail:Text("mdsomad10@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage:AssetImage("assets/images/Girl-DP.jpg"),),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.teal,),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person,color: Colors.teal,),
            title: Text("persion"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail,color: Colors.teal,),
            title: Text("Mall"),
          ),
        ],
      ),
    );
  }
}