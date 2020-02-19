import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/", // 名为"/"的路由作为应用的home(首页)
      routes: {
        "new_page": (context) => EchoRoute(),
        // "new_page": (context) => NewRoute(),
        "tips": (context) =>
            TipRoute(text: ModalRoute.of(context).settings.arguments),
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page!'),
      },
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have clicked ? the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            // RaisedButton(
            //   onPressed: () async {
            //     // 打开`TipRoute`，并等待返回结果
            //     var result = await Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return TipRoute(
            //             // 路由参数
            //             text: "我是提示xxxxww",
            //           );
            //         },
            //       ),
            //     );
            //     //输出`TipRoute`路由返回结果
            //     print("路由返回值: $result");
            //   },
            //   child: Text("打开提示页1"),
            // ),
            FlatButton(
              child: Text('open new route'),
              textColor: Colors.blue,
              onPressed: () {
                // Navigator.pushNamed(context, "new_page", arguments: '111');
                Navigator.of(context).pushNamed("new_page", arguments: "hi");
              },
            ),
            FlatButton(
              child: Text('open tips route'),
              textColor: Colors.yellow,
              onPressed: () async {
                // Navigator.pushNamed(context, "new_page", arguments: '111');
                var res = await Navigator.of(context)
                    .pushNamed("tips", arguments: "world");
                print("路由返回值: $res");
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Route'),
        ),
        body: Center(
          child: Text('this is a new route...'),
        ));
  }
}

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var args = ModalRoute.of(context).settings.arguments;
    // ...省略无关代码
    return Scaffold(
        appBar: AppBar(
          title: Text('Echo Route'),
        ),
        body: Center(
          child: Text(args),
        ));
  }
}

class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text, // 接收一个text参数
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "我是返回值asd"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
