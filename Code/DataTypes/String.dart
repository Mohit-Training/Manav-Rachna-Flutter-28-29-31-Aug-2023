void main(List<String> args) {
  //command line arguments -> list of string
  String input = args[0]; //first command line argument
  print(input);


  //IMPORTANT
  print("input's length is ${input.length}");
  print(
      "input is empty ? ${input.isEmpty} input is not empty ? ${input.isNotEmpty}");
  print(input.split(" "));
  print("a".compareTo("b"));
  print("input contains tt ? = ${input.contains("tt")}");
  print(
      "index of t = ${input.indexOf("t")}"); //if multiple occurance then it will retun index of first occurence
  print(input.replaceAll("t", "w"));
  print("input substring from 2 index 3rds place  - ${input.substring(2)}");
  print("input substring from 2 index till 4 index ${input.substring(2, 4)}");
  print("input in complete lowercase ${input.toLowerCase()}");
  print("input in complete upper case ${input.toUpperCase()}");


  //OTHER
  print("input's ASCII code of each letter ->  ${input.codeUnits}");
  print("input run time type ${input.runtimeType}");
  print("input ASCII code at 2nd index ${input.codeUnitAt(2)}");
  print("input ends with er ? = ${input.endsWith("er")}");
  print("input starts with fut ? = ${input.endsWith("fut")}");
  print(
      "last index of t = ${input.lastIndexOf("t")}"); //it will retun index of last occurence of the pattern
  print("input with space on left ${input.padLeft(5)}");
  print("input with space on right ${input.padRight(5)}");
  print(input.replaceFirst("t", "w", 4));
  print("input starts with fl ? ${input.startsWith("fl")}");
  input = "      flutter        ";
  print("input trim both side ${input.trim()} .");
  print("input trim from left ${input.trimLeft()} .");
  print("input trim from right ${input.trimRight()}");
}
