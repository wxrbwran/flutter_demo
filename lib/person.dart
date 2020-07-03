class Person {
  // 静态方法不能访问非静态成员
  // 非静态方法可以访问静态成员
  static String type = "human";
  String name;
  int age;
  // 默认构造函数  实例化的时候触发
  Person(this.name, this.age);
  // 命名构造函数
  Person.now() {
    print('我是now构造函数');
  }
  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void getInfo() {
    print('${this.name} ${this.age}');
  }

  void setInfo(int age) {
    this.age = age;
    show();
    print('static type');
    print(type);
  }

  //
  static void show() {
    print('static show');
    print(type);
    // print(this.age);
    // print(age);
    // print(this.getInfo());
  }
}

void main() {
  Person.show();
}
