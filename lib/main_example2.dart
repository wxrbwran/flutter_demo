import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: List<String>.generate(100, (i) => 'Item $i')));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, this.items});
  TextEditingController typeController = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '一心患者段',
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Container(
          alignment: Alignment.topLeft,
          width: 500,
          height: 400,
          // color: Colors.lightBlue,
          padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.red)),
          child: 
          TextField(
            controller: typeController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              labelText: '类型',
              helperText: '请输入类型',
            ),
            autofocus: false,
          ),
          // GridView.count(
          //   padding: EdgeInsets.all(20),
          //   crossAxisSpacing: 10,
          //   mainAxisSpacing: 10,
          //   crossAxisCount: 3,
          //   childAspectRatio: 1,
          //   children: <Widget>[
          //     Image.network(
          //       'http://img5.mtime.cn/mt/2019/12/06/151723.54470898_100X140X4.jpg',
          //       // fit: BoxFit.contain,
          //     ),
          //     Image.network('http://img5.mtime.cn/mt/2019/12/06/151723.54470898_100X140X4.jpg'),
          //     Image.network('http://img5.mtime.cn/mt/2019/12/06/151723.54470898_100X140X4.jpg'),
          //     Image.network('http://img5.mtime.cn/mt/2019/12/06/151723.54470898_100X140X4.jpg'),
          //   ],
          // ),
          // ListView.builder(
          //   itemCount: items.length,
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       title: Text('${items[index]}'),
          //       leading: Icon(Icons.accessible_forward),
          //       trailing: Icon(Icons.accessible_forward),
          //     );
          //   },
          // ),
          // Text(
          //   '''hello, world. asdas.dma,阿克索德拉升阿三开的拉萨市，阿斯利康的卢萨卡的，
          //           阿克琉斯的拉升。啊；老师的；阿三。撒打算的啦框架阿斯顿了卡索拉的。''',
          //   textAlign: TextAlign.center, // center left right start end
          //   maxLines: 2,
          //   overflow: TextOverflow.ellipsis,
          //   style: TextStyle(
          //       fontSize: 25.0,
          //       color: Color.fromARGB(255, 255, 120, 120),
          //       decoration: TextDecoration.underline,
          //       decorationStyle: TextDecorationStyle.dotted)
          // ),
        ),
      ),
    );
  }
}
