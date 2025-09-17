class Stack<E> {
  final List<E> _listdata;

  Stack() : _listdata = <E>[];

  @override
  String toString() {
    return '-----Top\n'
        '${_listdata.reversed.join('\n')}'
        '\n-----';
  }

  void push(E element) => _listdata.add(element);

  E pop() => _listdata.removeLast();

  E get peak => _listdata.last;
  bool get isEmptyList => _listdata.isEmpty;
  bool get isNotEmptyList => !isEmptyList;
}

void main() {
  Stack<String> newList = Stack();
  newList.push("note");
  newList.push("snacks");
  newList.push("parrot");
  print(newList);
  newList.pop();
  print(newList);
}
