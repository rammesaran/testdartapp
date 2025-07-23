import 'package:testdartapp/stack/stack.dart';

void main() {
  //reverseList(["a", "b", "c", "d", "e"]);
  stackreverse<String>(["a", "b", "c", "d", "e"]);
  //bool result = balance('h(');
  //print(result);
}

void reverseList(List<String> reverseList) {
  for (int i = reverseList.length - 1; i < reverseList.length; i--) {
    if (i < 0) {
      break;
    }
    print(reverseList[i]);
  }
}

void stackreverse<E>(List<E> list) {
  final mockList = Stack.newMethod(list);

  for (E value in list) {
    mockList.push(value);
  }
  while (mockList.isNonEmpty) {
    print(mockList.pop());
  }
}

bool balance(String letter) {
  List<String> splitted = letter.split('');
  int leftbracket = 0;
  int rightBracket = 0;
  for (int i = 0; i < splitted.length; i++) {
    if (splitted[i] == '(') {
      leftbracket = leftbracket + 1;
    } else if (splitted[i] == ')') {
      rightBracket = rightBracket + 1;
    }
  }
  print(leftbracket);
  print(rightBracket);
  if (rightBracket == leftbracket) {
    return true;
  } else {
    return false;
  }
}
