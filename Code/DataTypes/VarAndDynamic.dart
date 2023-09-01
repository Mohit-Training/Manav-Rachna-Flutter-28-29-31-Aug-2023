void main() {
  dynamic score = 50; //will take whatever value you assign to it and will accept any type of value in future
  score = score.toString();
  score = double.parse(score);
  var points = 50; //will take whatever value you assign to it and will not accept any other type of value in future
  points = points.toString(); //compile time error
}
