void main() {
  Function add = (int a, int b) => a + b; //fat arrow function
  Function sub = (int a, int b) {   //normal function
    return a - b;
  };
  print(add(2, 5));
  print(sub(5, 2));
}
