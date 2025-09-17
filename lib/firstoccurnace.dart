void main() {
  int index = strStr("hello", "ll");
  print(index);
}

int strStr(String haystack, String needle) {
  List newlist = haystack.split(needle);
  List<int> index = [];
  for (int i = 0; i < newlist.length; i++) {
    if (newlist[i].isEmpty) {
      index.add(i * needle.length);
    } else {}
  }

  if (index.isNotEmpty) {
    return index.first;
  } else {
    return -1;
  }
}
