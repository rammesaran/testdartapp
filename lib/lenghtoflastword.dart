void main() {
  int result = lengthOfLastWord("   fly me   to   the moon  ");
  print(result);
}

int lengthOfLastWord(String s) {
  List<String> response = s.trim().split(" ");

  return response.last.length;
}
