// bin/part2_error_handling.dart
import 'dart:async';

Future<int> divideNumbers(int a, int b) async {
  await Future.delayed(Duration(seconds: 1));
  if (b == 0) throw Exception("Division by zero!");
  return a ~/ b;
}

void main() async {
  try {
    int result = await divideNumbers(10, 0);
    print("Result: $result");
  } catch (e) {
    print("Error occurred: $e");
  }
}
