void main() {
  Stack<String> data = Stack();
  bool result = data.isbracket("(hello world)");
  print(result);
}

class Stack<E> {
  final List<E> _listData;
  Stack() : _listData = <E>[];

  void push(E eleement) => _listData.add(eleement);
  E pop() => _listData.removeLast();

  @override
  String toString() {
    return '-----Top\n'
        '${_listData.reversed.join('\n')}'
        '\n-----';
  }

  List<int> reverseList(List<int> data) {
    return data.reversed.toList();
  }

  bool isbracket(String data) {
    List response = data.split('');
    for (int i = 0; i < response.length; i++) {
      if (response[i] == '(') {
        push(response[i]);
      } else if (response[i] == ")") {
        pop();
      }
    }

    if (_listData.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
