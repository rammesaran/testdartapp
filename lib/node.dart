class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isListEmpty => head == null;

  //push operation
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  @override
  String toString() {
    if (isListEmpty) return 'Emptylist';
    return head.toString();
  }
}

class Node<T> {
  Node<T>? next;
  T value;
  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

void main() {
  final list = LinkedList<int>();
  list.push(1);
  list.push(2);
  list.push(3);
  print(list);
}
