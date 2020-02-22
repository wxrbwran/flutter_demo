import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      // alignment: FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://i0.hdslb.com/bfs/face/e67163b55711e9d7c402341ac18ba0d88ee3b112.png',
          ),
            radius: 100,
        ),
        // Container(
        //   // alignment: FractionalOffset(0.5, 0.8),
        //   decoration: BoxDecoration(
        //     color: Colors.lightBlue,
        //   ),
        //   padding: EdgeInsets.all(5),
        //   child: Text('hello啊')
        // ),
        Positioned(
          top: 10,
          left: 70,
          child: Text('asjd.com')
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Text('www.com')
        ),
      ],
    );
    return MaterialApp(
        title: '垂直布局',
        home: Scaffold(
            appBar: AppBar(
              title: Text('垂直布局'),
            ),
            body: Center(
              child: stack
            )
          )
        );
  }
}
