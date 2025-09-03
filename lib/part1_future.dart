// bin/part1_future.dart
import 'dart:async';

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // simulate delay
  return "Data fetched successfully!";
}

void main() async {
  print("Fetching data...");
  String result = await fetchData();
  print(result);
}
