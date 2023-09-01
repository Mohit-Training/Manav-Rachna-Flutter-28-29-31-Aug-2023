import 'dart:convert';
import 'dart:io';

syncProgramming() {
  int a = 1;
  int b = 3;
  int c = a + b;
  print(c);
}

asyncProgramming() {
  Future future = Future.delayed(
    Duration(seconds: 3),
    () {
      print("async code");
      return 4;
    },
  );
  print("before calling future");
  future.then((value) {
    print(value);
  }).catchError((err) {
    print(err);
  });
  print("after calling future");
}

asyncProgrammingMimicSync() async {
  Future future = Future.delayed(
    Duration(seconds: 3),
    () {
      print("async mimic sync");
      return 4;
    },
  );
  print("before calling future");
  int a = await future;
  print("after calling future");
  print(a);
}

void main() {
  syncProgramming();
  asyncProgrammingMimicSync();
  asyncProgramming();
}

asyncProgramming2() {
  final url = 'https://audio-player-wli3.onrender.com/getNumber';

  final httpClient = HttpClient();
  httpClient.getUrl(Uri.parse(url)).then((request) {
    request.close().then((value) {
      value.transform(utf8.decoder).join().then((value) {
        print(value);
      }).catchError((error) {
        // print(error);
      });
    }).catchError((error) {
      // print(error);
    });
  }).catchError((error) {
    // print(error);
  });
}
