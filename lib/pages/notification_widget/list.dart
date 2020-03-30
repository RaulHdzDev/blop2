import 'package:flutter/material.dart';

class ListNotification extends StatelessWidget {
  const ListNotification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'Item Title $idx',
          style: _biggerFont,
        ),
        subtitle: Text('Item Description $idx'),
        onTap: null,
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
