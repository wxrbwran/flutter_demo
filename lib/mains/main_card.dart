import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('吉林省', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('asasdd'),
            leading: Icon(Icons.perm_media, color: Colors.lightBlue),
          ),
          Divider(),
          ListTile(
            title: Text('山东省', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('asasdd'),
            leading: Icon(Icons.perm_media, color: Colors.lightBlue),
          ),
          Divider(),
          ListTile(
            title: Text('北京市', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('asasdd'),
            leading: Icon(Icons.perm_media, color: Colors.lightBlue),
          )
        ],
      ),
    );
    return MaterialApp(
        title: '垂直布局',
        home: Scaffold(
            appBar: AppBar(
              title: Text('垂直布局'),
            ),
            body: Center(child: card)));
  }
}
