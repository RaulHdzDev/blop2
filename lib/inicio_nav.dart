import 'package:bloop/pages/profile_frag.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:provider/provider.dart';

import 'dominio/providers/citas_provider.dart';
import 'pages/homepage_frag.dart';
import 'pages/notification_frag.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  IconData icon_1= Icons.person;
  IconData icon_2= Icons.home;
  IconData icon_3= Icons.notifications;
  @override
  void initState() { 
    super.initState();
  }
  int pageindex = 1;
  Widget _showPage = new homefragment();
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return profile_fragment();
        break;
      case 1:
        return homefragment();
        break;
      case 2:
        return notification_fragment();
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text("No page Found"),
          ),
        );
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context)=>Citas(),
      child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: pageindex,
            items: <Widget>[
              Icon(icon_1, size: 30, color: Colors.black),
              Icon(
                icon_2,
                size: 30,
                color: Colors.black,
              ),
              Icon(
                icon_3,
                size: 30,
                color: Colors.black,
              ),
            ],
            buttonBackgroundColor: Colors.lightBlue,
            animationCurve: Curves.easeInOut,
            color: Colors.lightBlue,
            backgroundColor: Colors.transparent,
            height: 50,
            animationDuration: Duration(milliseconds: 600),
            onTap: (int tappindex) {
              setState(() {
                _showPage = _pageChooser(tappindex);
              });
            },
          ),
          body: Container(
            color: Colors.white,
            child: Center(
              child: _showPage,
            ),
          )),
    );
  }
}
