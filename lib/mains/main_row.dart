import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('水平布局'),
        ),
        body: Row(children: <Widget>[
          Expanded(child: RaisedButton(
            onPressed: (){},
            color: Colors.yellow,
            child: Text('黄色按钮')
          )),
          Expanded(child: RaisedButton(
            onPressed: (){},
            color: Colors.red,
            child: Text('红色按钮')
          ))
        ],)
      )
    
    );
  }
}
