abstract class A {
  printA();
}

abstract class B {
  printB();
}

class C implements A, B {
  @override
  printA() {
    // TODO: implement printA
    return null;
  }

  @override
  printB() {
    // TODO: implement printB
    return null;
  }
}

class AA {
  // AA();  mixins 可以实现类似多继承，但不能有构造函数
  sayA() {}
}

class BB {
  sayB() {}
}

// mixins with关键字
class CC extends A with AA, BB {
  @override
  printA() {
    // TODO: implement printA
    return null;
  }
}

void main() {
  C c = new C();
  c.printA();
  c.printB();

  CC cc = new CC();
  cc.sayA();
  cc.sayB();

  print(cc is A);
  print(cc is AA);
  print(cc is BB);
}
