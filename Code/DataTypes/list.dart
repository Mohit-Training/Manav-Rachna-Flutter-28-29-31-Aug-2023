void main() {
  //IMPORTANT
  List<String> list = [
    'I',
    "am",
    "a",
    "flutter",
    "developer"
  ]; //if type not defined then it will be of type dynamic
  print("length of list ${list.length}");
  list.sort();  //also have an optional parameter which is a function for comparing 2 arguments
  print("reversed list ${list.reversed}");
  print("list is empty ? = ${list.isEmpty}");
  print("list is not empty ? = ${list.isNotEmpty}");
  list.add("."); //add element at last
  list.addAll([
    'I',
    'have',
    'built',
    'several',
    'apps',
    'using',
    'flutter'
  ]); //add list of elements at last
  print(list.any((element) =>
      element.length >
      3)); //will iterate the list and will return true if even single element satisfy the condition
  print("list contains 'am' ? ${list.contains("am")}");
  List<int> intList = [1, 2, 3, 4, 5];
  print(intList.fold(
      0,
      (previousValue, element) =>
          (previousValue as int) +
          element)); //will iterate the list and will return the value of previousValue + element, basically designed for summing up the list
  list.forEach((element) {
    print(element);
  });
  print(list.join(" "));
  List<String> upperCaseList = list.map((e) => e.toUpperCase()).toList();
  print(upperCaseList);
  List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> numList2 = numList.map((e) => e * 2).toList();
  print(numList2);



  //OTHER
  print(list.asMap()); //returns a Map<int,String>
  print("element at index 3 is ${list.elementAt(3)}");
  print("last element is ${list.last}");
  print(list.every((element) =>
      element.length >
      3)); //will iterate the list and will return true if all elements satisfy the condition
  list.fillRange(2, 4, "hello"); //fills the list with given value
  print(list);
  print(list.firstWhere((element) =>
      element.length >
      3)); //returns the first element that satisfy the condition else -1
  print(list.indexOf('have'));
  list.insert(5, "through");
  list.insertAll(5, ["a", "b", "c", "d"]);
  print(list.lastWhere((element) => element.length > 3));
  print("delete successful ? ${numList.remove(4)}");
  print(numList2);
  print("removing ${list.removeAt(3)}");
  list.removeWhere((element) => element.length > 5);
  print(list);
  print("sorted list - $list");
  List<String> subList = list.sublist(1, 3);
  print("sub list is $subList");
  list.clear(); //clears the list
}
