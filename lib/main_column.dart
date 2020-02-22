import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '垂直布局',
        home: Scaffold(
            appBar: AppBar(
              title: Text('垂直布局'),
            ),
            body: Center(
              child:Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('asd'),
                  Text('sdjasldj'),
                  Text('aasdksd'),
                  Text('kjashdj'),
                  Text('jdfajd'),
                ],
            )
          )
        )
      );
  }
}
