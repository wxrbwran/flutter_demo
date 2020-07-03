// getter setter

class Rect {
  int width;
  int height;
  // 默认构造函数  实例化的时候触发
  Rect(this.width, this.height);

  get area {
    return this.width * this.height;
  }

  set area_height(val) {
    this.height = val;
  }
}
