import 'package:flutter/material.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      itemCount: data.length,
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

// Data to display.
const List<Entry> data = <Entry>[
  Entry(
    'Todas las Notificaciones',
    <Entry>[
      Entry('Only Title Notification'),
      Entry('Only Title Notificacion'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile( title: Text(root.title, style: TextStyle(color: Colors.white,),));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      backgroundColor: Colors.blueAccent,
      title: Text(
        root.title,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black45,
          fontFamily: "CaviarDreams",
        ),
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
