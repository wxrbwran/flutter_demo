void main() {
  /*
  返回类型 方法名称 () {
    方法体;
    return 返回值;
  }
  */
  // printInfo('自定义');
  // print(getNum());
  // print(sum(5));
  print(printUserInfo('张三'));
  print(printUserInfo('lisi', age: 18, gender: '男'));
  print(printUserInfo('lisi', gender: '男', age: 18));
  print(printUserInfo2('lisi',  18, '男'));
  print(printUserInfo2('lisi',  18));
  print(printUserInfo2('lisi'));

  List list = [1, 2, 3, 4, 5, 7];
  // 尖头函数，只能一行
  // list.forEach((f) => print(f));
  // list.forEach((f) => {
  //       print(f)
  //       // print(f * 2)
  //     });

  var newList = list.map((value) => value > 2 ? value : value * 2);
  // print(newList);
  // printNum();

  // 自执行
  // (() {
  //   print('自执行');
  // })();
  // 函数表达式
  var f = fn();
  // f();
  // f();
  // f();
}

void printInfo(String info) {
  print(info);

  // int getNum() {
  //   int myNum = 123;
  //   print(getList());
  //   return myNum;
  // }

  // print(getNum());
}

// 全局变量
String s = '1';
// 全局函数
List getList() {
  return [111, 2, '333'];
}

int sum(int num) {
  int count = 0;
  for (int i = 0; i <= num; i++) {
    count += i;
  }
  return count;
}

String printUserInfo(String name, {int age = 10, String gender}) {
  // 可选参数[]
  // 命名参数 {}
  return '姓名$name, $age, $gender';
}

String printUserInfo2(String name, [int age = 10, String gender]) {
  // 可选参数[]
  // 命名参数 {}
  return '姓名$name, $age, $gender';
}

// 匿名方法
var printNum = () {
  print(1);
};

// 闭包
fn() {
  var a = 123;
  return () {
    a++;
    print(a);
  };
}
