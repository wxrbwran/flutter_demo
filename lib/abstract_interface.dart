/*
Dart中抽象类: Dart抽象类主要用于定义标准，子类可以继承抽象类，
也可以实现抽象类接口。


  1、抽象类通过abstract 关键字来定义

  2、Dart中的抽象方法不能用abstract声明，
  Dart中没有方法体的方法我们称为抽象方法。

  3、如果子类继承抽象类必须得实现里面的抽象方法

  4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。

  5、抽象类不能被实例化，只有继承它的子类可以

Datr中的多态：
    允许将子类类型的指针赋值给父类类型的指针, 同一个函数调用会有不同的执行效果 。

    子类的实例赋值给父类的引用。
    
    多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。

extends抽象类 和 implements的区别：

  1、如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用extends继承抽象类

  2、如果只是把抽象类当做标准的话我们就用implements实现抽象类



案例：定义一个Animal 类要求它的子类必须包含eat方法

*/

main() {
  Dog d = new Dog();
  d.eat();
  d.printInfo();

  Cat c = new Cat();
  c.eat();

  // Aninal animal = new Cat();
  c.printInfo();

  // Animal a=new Animal();   //抽象类没法直接被实例化

  Mysql mysql = new Mysql('xxxxxx');

  mysql.add('1243214');
}

abstract class Animal {
  eat(); //抽象方法  // 多态
  run(); //抽象方法
  printInfo() {
    print('我是一个抽象类里面的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    // 多态
    print('小狗在吃骨头');
  }

  @override
  run() {
    print('小狗在跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    // 多态
    print('小猫在吃老鼠');
  }

  @override
  run() {
    print('小猫在跑');
  }
}

/*
和Java一样，dart也有接口，但是和Java还是有区别的。

  首先，dart的接口没有interface关键字定义接口，
  而是普通类或抽象类都可以作为接口被实现。

  同样使用implements关键字进行实现。

  但是dart的接口有点奇怪，如果实现的类是普通类，
  会将普通类和抽象中的属性的方法全部需要覆写一遍。
  
  而因为抽象类可以定义抽象方法，普通类不可以，
  所以一般如果要实现像Java接口那样的方式，一般会使用抽象类。

  建议使用抽象类定义接口。

*/

/*
定义一个DB库 支持 mysql  mssql  mongodb

mysql  mssql  mongodb三个类里面都有同样的方法

*/

abstract class Db {
  //当做接口   接口：就是约定 、规范
  String uri; //数据库的链接地址
  add(String data);
  save();
  delete();
}

class Mysql implements Db {
  @override
  String uri;

  Mysql(this.uri);

  @override
  add(data) {
    // TODO: implement add
    print('这是mysql的add方法' + data);
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }

  remove() {}
}

class MsSql implements Db {
  @override
  String uri;
  @override
  add(String data) {
    print('这是mssql的add方法' + data);
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }
}

class Postgres implements Db {
  @override
  String uri;

  @override
  add(String data) {
    // TODO: implement add
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }
}
