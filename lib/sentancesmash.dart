void main() {
  String result = solutions(['hello', 'world', 'this', 'is', 'great']);
  print(result);
}

String solutions(List<String> words) {
  String name = words.join(' ');
  return name;
}
