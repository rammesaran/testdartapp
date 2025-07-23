void main() {
  bool result = isPalindrome(121);
  print(result);
}

bool isPalindrome(int x) {
  List name = x.toString().split("");
  List reverse = name.reversed.toList();

  if (name.join('') == reverse.join('')) {
    return true;
  } else {
    return false;
  }
}
