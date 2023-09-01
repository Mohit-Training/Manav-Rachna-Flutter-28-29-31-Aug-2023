void main() {
  void fn(String a, [int b = 0, double c = 1.0]) {}
  void fn1({String a = "a", required String b}) {}
  fn("a", 3, 2.0);
  fn("a", 3);
  fn("a");
  fn1(a: "a", b: "b");
  fn1(b: "b");
}
