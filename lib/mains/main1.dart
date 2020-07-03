import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// items: List<String>.generate(100, (i) => 'Item $i'))
// );

class MyApp extends StatelessWidget {
  // final List<String> items;
  MyApp({Key key}) : super(key: key);
  //  @required this.items
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome 2 flutter',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Welcome'),
            ),
            // =============> ListView
            body: GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              childAspectRatio: 0.7,
              children: <Widget>[
                Image.network(
                  'http://img5.mtime.cn/mt/2019/12/06/151723.54470898_100X140X4.jpg',
                  // fit: BoxFit.cover,
                ),
                Image.network('http://img5.mtime.cn/mt/2019/12/06/151723.54470898_100X140X4.jpg'),
                Image.network('http://img5.mtime.cn/mt/2019/12/06/151723.54470898_100X140X4.jpg'),
                Image.network('http://img5.mtime.cn/mt/2019/12/06/151723.54470898_100X140X4.jpg'),
              ],
            )


            // =============> ListView
            // body: ListView.builder(
            //   itemCount: items.length,
            //   itemBuilder: (context, index) {
            //     return ListTile(title: Text('${items[index]}'));
            //   },
            // )
            // body: Center(
            // =========== Text
            // child: Text(
            //     'hello, world. asdas.dma,阿克索德拉升阿三开的拉萨市，阿斯利康的卢萨卡的，阿克琉斯的拉升。啊；老师的；阿三。撒打算的啦框架阿斯顿了卡索拉的。',
            //     textAlign: TextAlign.center, // center left right start end
            //     maxLines: 2,
            //     overflow: TextOverflow.ellipsis,
            //     style: TextStyle(
            //         fontSize: 25.0,
            //         color: Color.fromARGB(255, 255, 120, 120),
            //         decoration: TextDecoration.underline,
            //         decorationStyle: TextDecorationStyle.solid)
            //     ),

            // ============ Container
            // child: Container(
            // child: Text(
            //   'asdasd',
            //   style: TextStyle(
            //     fontSize: 30,
            //   ),
            // ),
            // alignment: Alignment.topLeft,
            // width: 500,
            // height: 400,
            // // color: Colors.lightBlue,
            // padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
            // margin: const EdgeInsets.all(10),
            // decoration: new BoxDecoration(
            //   gradient: const LinearGradient(
            //     colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple],
            //   ),
            //   border: Border.all(width: 2, color: Colors.red)
            // ),

            // ============ Image
            // child: new Image.network(
            //   'http://blogimages.jspang.com/blogtouxiang1.jpg',
            //   fit: BoxFit.scaleDown,
            //   repeat: ImageRepeat.noRepeat,
            //   // color: Colors.red,
            //   // colorBlendMode: BlendMode.screen,
            // ),
            // alignment: Alignment.topLeft,
            // width: 300,
            // height: 200,
            // color: Colors.lightBlue

            // )
            //   child: Container(
            //     height: 200,
            //     child: MyList()
            //   ),
            // )
        ),
      );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 180,
          color: Colors.lightBlue,
        ),
        Container(
          width: 180,
          color: Colors.yellow,
        ),
        Container(
          width: 180,
          color: Colors.red,
        ),
        // ListTile(
        //   leading: Icon(Icons.perm_camera_mic),
        //   title: Text('camera_mic')
        // ),
        // ListTile(
        //   leading: Icon(Icons.perm_contact_calendar),
        //   title: Text('contact_calendar')
        // ),
      ],
    );
  }
}
