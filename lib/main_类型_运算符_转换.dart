void main() {
  // leixing();
  // yunsuanfu();
  leixingzhuanhuan();
  // print(1);
}

void leixing() {
  String s = 'sadasdsad';
  var num = 123;
  num = 111;
  dynamic num2131 = 213;
  num2131 = '213213';
  // num = '111';
  int num1 = 111;
  double numddd = 1.213213;
  // print(s);
  // print(num);
  final now = DateTime.now();
  // print(now);

  // 1. 字符串定义方式
  // var str1 = "asdasd";
  // String str2 = 'asdasdasdasd';

  // String str1 = '''sss
  // sss2
  // asdasdasd
  // ss3
  // ''';
  // print(str1);

  // 2. 字符串拼接

  String str1 = 'dart';

  String str2 = 'flutter';
  print(str1 + ' ' + str2);
  print('$str1, $str2');

  // int => 只能是是整型

  int a = 0;
  // a = 12.0;
  // double => 既可以是整型，也可以是浮点型
  double b = 111.0;
  b = 111;
  // print(a);
  // print(b);
  // print(a + b);

  // bool

  bool t = true;
  bool f = false;
  // t = 1 == 1;
  // t = 1 != 1;
  // t = 123
  // print(t);
  // print(f);

  // List
  List<String> l = ['11', '22'];
  var l1 = [];
  // print(l.length);
  // print(l[1]);

  var l2 = new List(); // 可省略new
  l2.add('asd');
  l2.add(231);
  l2.add('jdas');
  // print(l2);

  // Map
  var person = {
    "name": 'asd',
    "age": 12,
  };
  print(person);
  // print(person.name);
  print(person['name']);

  var person2 = new Map();
  person2['name'] = 'asd';
  person2['age'] = 18;
  print(person2);

  // 类型判断 is
  var str = '1234';
  print(str is String);
  print(num is int);
}

void yunsuanfu() {
  // 运算符
  // 算术运算符  + - * / %（取余） ～/（取整）
  // 关系运算符 == != > < >= <=
  // 逻辑运算符 !取反  && 并且  || 或者
  // 赋值 = ??=
  var b1;
  b1 ??= 23;
  var c1 = 24;
  c1 ??= 25;
  print(b1);
  print(c1);
  // 复合运算符 += -= *= /=
  int a = 1;
  a = a + 10;
  a += 10;

  // 条件判断
  // if else switch case 三目运算符
  // if (true || 1 == 1) {
  //   print(22);
  // }
  // ??
  var a2;
  var b2 = a2 ?? 10;
  // var c2 = a2 || 20;
  print(b2);
  // print(c2);
}

void leixingzhuanhuan() {
  // String => int / double
  String str = '11.22';
  var myNum = double.parse(str);
  int.parse('123');
  print(myNum);
  // int / double => String
  var myNum1 = 12;
  var str1 = myNum1.toString();
  print(str1);

  // other => Boolean   isEmpty;
  var str2 = '213';
  print(str2.isEmpty);

  print((0 / 0).isNaN);
}
