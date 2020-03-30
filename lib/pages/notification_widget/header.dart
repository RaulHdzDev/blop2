import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width-1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Text(
                      " Notificaciones",
                      style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                      fontFamily: "CaviarDreams",),
                    ),
                  ),
                ],
              )),
              IconButton(icon: Icon(Icons.search), color: Colors.black87,onPressed: (){}),
              IconButton(icon: Icon(Icons.delete), color: Colors.black87,onPressed: (){})
        ],
      ),
    );
  }
}

/* */