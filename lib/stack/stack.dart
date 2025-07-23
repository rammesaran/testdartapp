class Stack<E> {
  Stack.newMethod(Iterable<E> elements) : _storage = List.of(elements);
  final List<E> _storage;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }

  void push(E element) {
    _storage.add(element);
  }

  E pop() {
    return _storage.removeLast();
  }

  E get peek {
    return _storage.last;
  }

  bool get isEmpty {
    return _storage.isEmpty;
  }

  bool get isNonEmpty {
    return !isEmpty;
  }
}
