import 'dart:collection';

void main() {
  //int result = sumFromOneTo(10);
  List<String> result = fillList(2);
  print(result);
}

int sumFromOneTo(int n) {
  return n * (n + 1) ~/ 2;
}

List<String> fillList(int length) {
  return List.filled(length, 'a' * length);
}
