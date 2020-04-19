import 'package:bloop/dominio/providers/local_notification.dart';
import 'package:flutter/material.dart';

class ListNotification extends StatelessWidget {
  const ListNotification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localNotification = LocalNotification();
    localNotification.initializeNotifications();
    final numItems = 3;
    final _biggerFont = const TextStyle(fontSize: 18.0);
    Widget _buildRow(int idx) {
      return ListTile(
        leading: Image(
          image: AssetImage('assets/logohemo.png'),
          width: 40,
          height: 40,
        ),
        title: Text(
          'Cita $idx',
          style: _biggerFont,
        ),
        subtitle: Text(' fecha: 2020-4-20'),
        onTap: () {
        }
      );
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      itemCount: numItems * 2,
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2 +1;
        return _buildRow(index);
      },
    );
  }
}
