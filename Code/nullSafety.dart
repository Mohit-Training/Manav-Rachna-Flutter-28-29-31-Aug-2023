import 'dart:io';

void main() {
  String a = "a";
  String? b = stdin.readLineSync();
  String c;
  if (b != null) {
    c = a + b;
    print(c);
  }
  c = b! + a;
  print(c);
}
