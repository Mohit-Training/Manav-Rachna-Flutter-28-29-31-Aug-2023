void main() {
  Map<String, int> map = {'1': 20, "2": 13, "3": 6, "4": 4, "6": 2};
  print("map is empty ? ${map.isEmpty}");
  print("map is not empty ? ${map.isNotEmpty}");
  print("map's length ${map.length}");
  map.addAll({"0": 18, "5": 1});
  print(map);
  print("map contains key 2 ? ${map.containsKey('2')}");
  print("map contains value 4 ? ${map.containsValue(4)}");
  map.forEach((String key, int value) {
    print("for key $key value is $value");
  });
  Map<int, int> intMap = map.map((key, value) {
    return MapEntry(int.parse(key), value);
  });
  print(intMap);
  map.putIfAbsent('7', () => 1);
  print(map);
  print(map.remove('0'));
  map.removeWhere((key, value) {
    if (value < 2) {
      return true;
    } else
      return false;
  });
  map.clear();
}
