// 封装 继承 多态
// dart使用类和单继承
import './person.dart';
import './animal.dart';
import './rect.dart';

void main() {
  // List list = new List();
  // list.add(1);

  // Person p1 = new Person('zs', 11);

  // p1.getInfo();
  // p1.setInfo(12);
  // p1.getInfo();

  // Person p2 = new Person.now();
  // Person p3 = new Person.setInfo('ls', 30);
  // print('======');
  // p3.setInfo(31);
  // p3.getInfo();
  // print(p3.name);

  // Animal dog = new Animal('旺财', 3);
  // print(dog._name); // 私有，不能获取
  // dog.getInfo(); // 通过公有方法获取
  // dog._run();

  // Rect rect1 = new Rect(10, 4);
  // print(rect1.area);

  // rect1.area_height = 5;
  // print(rect1.area);

  // print(Person.type);
  // Person.show();

  // 操作符
  Person1 p1 = new Person1('name', 11);
  p1?.printName();
  // Map m = {
  //   "a": 111,
  //   "b": 123,
  //   "sss": {},
  // };
  // m['sss']?.a = 3;
  // print('mmmmm   $m');
  // var a = [1, 2, 3];
  // a as List
  print(p1 is Person1);
  (p1 as Person1).printAge();
  p1
    ..printAge()
    ..printName();
  p1
    ..age = 30
    ..name = 'lss'
    ..printAge()
    ..printName();

  // 继承
  Child c1 = new Child('xm', 6, '男');
  c1.printName();
  c1
    ..run()
    ..printAge();
}

// 操作符
// ？ 条件运算符
// as 类型转换
// is 类型判断
// .. 级联操作

class Person1 {
  String name;
  int age;
  Person1(this.name, this.age);
  Person1.xxx(this.name, this.age);
  printName() {
    print(this.name);
  }

  @override // 可以不写
  printAge() {
    print(this.age);
  }
}

class Child extends Person1 {
  String gender;
  Child(String name, int age, this.gender) : super.xxx(name, age);
  void run() {
    print('${this.name} is running');
  }
  @override
  printAge() {
    print('${this.name} is ${this.age} years old');
  }
}
