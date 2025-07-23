void main() {
  String output = solution("ew");
  print("the output is $output");
}

String solution(String symbol) {
  int? res = int.tryParse(symbol);

  if (res == null) {
    return ("not a digit");
  } else if (res % 2 == 0) {
    return ("even");
  } else {
    return ("odd");
  }
}
