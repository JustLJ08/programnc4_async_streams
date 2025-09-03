// bin/part3_stream.dart
import 'dart:async';

Stream<int> numberStream(int n) async* {
  for (int i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  print("Starting number stream:");
  await for (var number in numberStream(5)) {
    print("Received: $number");
  }
  print("Stream finished.");
}
