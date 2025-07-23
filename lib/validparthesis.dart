void main() {
  bool isvaliddata = isValid("(())");
  print(isvaliddata);
}

bool isValid(String s) {
  List<String> data = s.split("");
  int counterincrement = 0;
  for (int i = 0; i < data.length; i++) {
    if (data[i] == "(") {
      String matchingString = "()";
      for (var element in data) {
        String joinedString = data[i] + element;
        print(joinedString);
        if ("()" == matchingString) {}
      }
    }
  }
  return false;
}
