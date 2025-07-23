import 'dart:collection';

void main() {
  final start = DateTime.now();
  final sum = betterSum(44);
  final listData = newMethod(5);

  final end = DateTime.now();
  final time = end.difference(start);
  print(listData);
  print("Time taken: $time");
  print("Sum: $sum");
}

int betterSum(int n) {
  return n * (n + 1) ~/ 2;
}

List<String> newMethod(int lenghth) {
  return List.filled(lenghth, "a");
}
