void main() {
  double d = 22 / 7;

  //IMPORTANT
  print("d into integer ${d.toInt()}");
  print("d into string ${d.toString()}");
  print("d till 2 decimal places ${d.toStringAsFixed(2)}");


  //OTHER
  print("absolute value of d is ${d.abs()}");
  print("round value of d is ${d.round()}");
  print(
      "upper value of d is ${d.ceil()}"); // ceil returns int, we also have ceilToDouble() for double value
  print(
      "lower value of d is ${d.floor()}"); // floor returns int, we also have floorToDouble() for double value
  print("remainder value of d is ${d.remainder(2)}");
  print(
      "comparing 3.14159265359 from 3.14159265359 ${3.14159265359.compareTo(3.14159265360)}");
  print(
      "comparing 22/7 (~3.14159265359) from 3.14159265360 ${d.compareTo(3.14159265360)}");
  print("d in exponential form ${d.toStringAsExponential(2)}");
  print("2 significant digits of d ${d.toStringAsPrecision(2)}");
}
