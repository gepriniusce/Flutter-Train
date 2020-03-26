void main() {
  var rect = Rectangle(0, 0, 1, 1);
  print(rect.left);
  print(rect.right);
  rect.right = 2;
  print(rect.left);
  print(rect.right);
}

class Rectangle {
  num left;
  num top;
  num width;
  num height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;

  set right(value) => left = value - width * 2;

  num get bottom => top + height;

  set bottom(value) => top = value - height;
}
