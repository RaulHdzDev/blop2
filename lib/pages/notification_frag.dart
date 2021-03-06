
import 'package:bloop/pages/notification_widget/header.dart';
import 'package:bloop/pages/notification_widget/list.dart';
import 'package:bloop/pages/notification_widget/listHistory.dart';
import 'package:flutter/material.dart';

class notification_fragment extends StatefulWidget {
  @override
  _notification_fragmentState createState() => _notification_fragmentState();
}

class _notification_fragmentState extends State<notification_fragment> {
  @override
  void initState() {
    super.initState();
  }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: true,
      child: Column(children: <Widget>[
        Header(),
        new Container(
          //Texto de rencientes
          child: Row(
            children: <Widget>[
              Text(
                " Recientes",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SFUIDisplay',
                    color: Colors.black45),
              ),
            ],
          ),
        ),
        new Expanded(
          child: ListNotification(),
        ),
        new Expanded(child: HistoryList()),
        ]),
    ));
  }
}
