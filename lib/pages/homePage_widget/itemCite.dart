import 'package:flutter/material.dart';


class ItemCite extends StatelessWidget {
  const ItemCite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Container(
        height: 60.0,
            margin: const EdgeInsets.only(top:10.0, left: 10.0, right:10.0, bottom: 10.0),
            decoration: BoxDecoration(                    
            color: Colors.blue,
            borderRadius: new BorderRadius.all(  Radius.circular(5.0) ),
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                "   7:00 a.m. - 10:00 a.m",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
                Text(
                "   Description this cite",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SFUIDisplay',
                    color: Colors.white),
              ),
                    ],
                  ),
                ),
                IconButton(icon: Icon(Icons.timer), color: Colors.white60,onPressed: (){}),
              ],
            ),
      ),
    );
  }
}