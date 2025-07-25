class Stack<E> {
  Stack() : _storage = <E>[];

  final List<E> _storage;

  @override
  String toString() {
    return '${_storage.reversed.join('\n')}';
  }

  void push(E element) => _storage.add(element);
  E get peek => _storage.last;

  E pop() => _storage.removeLast();

  bool get isNotEmpty => _storage.isNotEmpty;
  bool get isEmpty => _storage.isEmpty;
}

void main() {
  bool result = checkparenties("[{()}]");
  print(result);
}

bool checkparenties(String s) {
  var stack = Stack<int>();

  final openbracket = "(".codeUnitAt(0);
  final closeBracket = ")".codeUnitAt(0);
  final openSquarebracket = "[".codeUnitAt(0);
  final closeSquarebracket = ']'.codeUnitAt(0);
  final openflowerbracket = "{".codeUnitAt(0);
  final closeflowerbracket = "}".codeUnitAt(0);
  int previousunit = 0;
  int difference = 0;

  for (int codeunit in s.codeUnits) {
    difference = previousunit - codeunit;
    if (codeunit == openbracket ||
        codeunit == openSquarebracket ||
        codeunit == openflowerbracket) {
      stack.push(codeunit);
      if (codeunit == 40) {
        previousunit = codeunit + 1;
      } else {
        previousunit = codeunit + 2;
      }
    } else if (codeunit == closeBracket ||
        codeunit == closeSquarebracket ||
        codeunit == closeflowerbracket) {
      if (stack.isEmpty) {
        return false;
      } else if (previousunit != codeunit && difference != 0) {
        if (stack.isNotEmpty && difference == 0) {
          stack.pop();
          previousunit = stack._storage.last;
        } else {
          return false;
        }
      } else {
        stack.pop();
        if (stack.isNotEmpty) {
          if (stack._storage.last == 40) {
            previousunit = stack._storage.last + 1;
          } else {
            previousunit = stack._storage.last + 2;
          }
        }
      }
    }
  }
  return stack.isEmpty;
}
