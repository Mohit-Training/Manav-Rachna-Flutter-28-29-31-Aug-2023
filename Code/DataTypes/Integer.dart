void main() {
  int num = 10;

  //IMPORTNAT
  double d = num.toDouble(); //10.0
  print(d);
  String s = num.toString(); //"10"
  print(s);
  print("num in binary ${num.toRadixString(2)}"); //1010

  //OTHER
  print("num is even ? ${num.isEven}"); //true
  print("num is odd ? ${num.isOdd}"); //false
  print("num is negative ? ${num.isNegative}"); //true
  print("num's runtimeType ${num.runtimeType}"); //int
  print("num is compared with 2 -> ${num.compareTo(2)}"); //1
  print(99.gcd(66)); //33
  print(10.remainder(7)); //3
  print("num in octal decimal ${num.toRadixString(8)}"); //12
  print("22 in hexadecimal ${22.toRadixString(16)}"); //16
}
