import 'package:flutter/material.dart';
import 'package:bloop/complements/custom_expansion_tile.dart' as custom;
import 'package:bloop/pages/homePage_widget/itemCite.dart';

class ExpansionCites extends StatelessWidget {
  const ExpansionCites({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
                children: <Widget>[
                  new custom.ExpansionTile(
          backgroundColor: Colors.lightBlue,
          headerBackgroundColor: Colors.lightBlue,
          iconColor: Colors.white,
            title: Container(
              color: Colors.lightBlue,
          width: double.infinity,
          child: Text(
            "Hide: Cites, Expanded: Seleccione una hora",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontFamily: "CaviarDreams",
            ),
          ),
          
        ),
        trailing: Icon(Icons.arrow_drop_down, size: 32, color: Colors.white,),
        onExpansionChanged: (value){
        },
        children: <Widget>[
          ItemCite(),
          ItemCite(),
          ItemCite(),
        ],
        )
      
                ],
              ),
            
    );
  }
}