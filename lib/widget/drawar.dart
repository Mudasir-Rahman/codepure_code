import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawar extends StatelessWidget {
  const MyDrawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text('Nudaser Rahman'),
                accountEmail: Text('nudaser.rahman@example.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/profile.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.white,
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              iconColor: Colors.white,
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              iconColor: Colors.white,
              title: Text(
                'Email Me',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
