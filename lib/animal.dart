// dart 没有public protected private
// 但是可以使用_定义私有方法 抽离类为单文件

class Animal {
  String _name;
  int age;
  // 默认构造函数  实例化的时候触发
  Animal(this._name, this.age);
  // Animal(_name, age) {
  //   this._name = _name;
  //   this.age = age;
  // }
  // 命名构造函数
  Animal.second(this._name, this.age);
  void getInfo() {
    print('${this._name} ${this.age}');
    this._run();
  }

  void _run() {
    print('run ~');
  }
}

void main() {
  var animal1 = Animal('asd', 11);
  print(animal1._name);
  animal1._run();
  var animal2 = Animal.second('asd', 11);
}
