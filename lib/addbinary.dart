import 'dart:collection';

void main() {
  //String result = addBinary("11", "1");
  int result = sumOfNumber(6);
  print(result);
}

//String addBinary(String a, String b) {}
int sumOfNumber(int n) {
  return n * (n + 1) ~/ 2;
}
