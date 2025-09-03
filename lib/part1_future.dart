import 'dart:async';
Future<String> fetchMessage() async {
  await Future.delayed(Duration(seconds: 5)); 
  return "⏳ After waiting... Hello, jamesmar! 🚀 Your are programmer in future !";
}

Future<void> main() async {
  print("🔔 Waiting for a special message...");
  String message = await fetchMessage();
  print(message);
}
