import 'package:flutter/material.dart';

class profile_fragment extends StatefulWidget {
  profile_fragment({Key key}) : super(key: key);

  @override
  _profile_fragmentState createState() => _profile_fragmentState();
}

class _profile_fragmentState extends State<profile_fragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 100.0,
              child: Image(
                image: AssetImage('assets/logohemo.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
